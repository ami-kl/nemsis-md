// Import necessary modules
const fs = require('fs').promises; // Use promises for async file operations
const path = require('path');
const readline = require('readline'); // For user confirmation

// --- Configuration ---
// Set the root directory to scan for DOCX files to delete.
const rootDir = path.join(__dirname, 'NEMSIS_SOURCE');
// --- End Configuration ---

// Create interface for reading user input from the console
const rl = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

/**
 * Asks the user for confirmation.
 * @param {string} question The question to ask the user.
 * @returns {Promise<boolean>} Promise resolving to true if user confirms (yes), false otherwise.
 */
function askConfirmation(question) {
    return new Promise((resolve) => {
        rl.question(question + ' (yes/no): ', (answer) => {
            resolve(answer.trim().toLowerCase() === 'yes');
        });
    });
}

/**
 * Deletes a single DOCX file.
 * @param {string} docxFilePath Full path to the DOCX file to delete.
 */
async function deleteDocxFile(docxFilePath) {
    try {
        console.log(`Deleting: ${docxFilePath}`);
        await fs.unlink(docxFilePath); // Actual deletion happens here
        console.log(`  -> Deleted successfully.`);
    } catch (error) {
        console.error(`  -> FAILED to delete ${docxFilePath}:`, error.message || error);
    }
}

/**
 * Recursively scans a directory for DOCX files and initiates their deletion.
 * @param {string} directoryPath Path to the directory to scan.
 */
async function findAndDeleteDocx(directoryPath) {
    try {
        const entries = await fs.readdir(directoryPath, { withFileTypes: true });
        const deletionPromises = []; // Store promises for concurrent processing

        for (const entry of entries) {
            const fullPath = path.join(directoryPath, entry.name);

            if (entry.isDirectory()) {
                // If it's a directory, recurse into it
                deletionPromises.push(findAndDeleteDocx(fullPath));
            } else if (entry.isFile() && path.extname(entry.name).toLowerCase() === '.docx') { // Check for .docx extension
                // If it's a DOCX file, add its deletion promise to the list
                deletionPromises.push(deleteDocxFile(fullPath));
            }
        }
        // Wait for all deletions/recursive calls in this directory to complete
        await Promise.all(deletionPromises);

    } catch (error) {
        console.error(`Error reading directory ${directoryPath}:`, error);
    }
}

// --- Main Execution ---
async function runDeletion() {
    console.log(`\n⚠️ WARNING: This script will permanently delete all DOCX (.docx) files found within:`);
    console.log(rootDir);
    console.log(`There is NO UNDO. Ensure you have backups or use version control.\n`);

    const proceed = await askConfirmation('Are you absolutely sure you want to proceed with deleting DOCX files?');

    rl.close(); // Close the readline interface

    if (proceed) {
        console.log('\nStarting DOCX deletion process...');
        console.log('--------------------------------------------------');
        await findAndDeleteDocx(rootDir); // Start the recursive deletion
        console.log('--------------------------------------------------');
        console.log('DOCX deletion process finished.');
    } else {
        console.log('\nOperation cancelled by user. No files were deleted.');
    }
}

// Run the main function and handle any top-level errors
runDeletion().catch(error => {
    console.error("An unexpected error occurred during the main DOCX deletion process:", error);
    rl.close(); // Ensure readline is closed on error too
});