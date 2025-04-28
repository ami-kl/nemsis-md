// Import necessary modules
const fs = require('fs').promises; // Use promises for async file operations
const path = require('path');
const readline = require('readline'); // For user confirmation

// --- Configuration ---
// Set the root directory to scan for PDFs to delete.
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
 * Deletes a single PDF file.
 * @param {string} pdfFilePath Full path to the PDF file to delete.
 */
async function deletePdfFile(pdfFilePath) {
    try {
        console.log(`Deleting: ${pdfFilePath}`);
        await fs.unlink(pdfFilePath); // Actual deletion happens here
        console.log(`  -> Deleted successfully.`);
    } catch (error) {
        console.error(`  -> FAILED to delete ${pdfFilePath}:`, error.message || error);
    }
}

/**
 * Recursively scans a directory for PDF files and initiates their deletion.
 * @param {string} directoryPath Path to the directory to scan.
 */
async function findAndDeletePdfs(directoryPath) {
    try {
        const entries = await fs.readdir(directoryPath, { withFileTypes: true });
        const deletionPromises = []; // Store promises for concurrent processing

        for (const entry of entries) {
            const fullPath = path.join(directoryPath, entry.name);

            if (entry.isDirectory()) {
                // If it's a directory, recurse into it
                deletionPromises.push(findAndDeletePdfs(fullPath));
            } else if (entry.isFile() && path.extname(entry.name).toLowerCase() === '.pdf') {
                // If it's a PDF file, add its deletion promise to the list
                deletionPromises.push(deletePdfFile(fullPath));
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
    console.log(`\n⚠️ WARNING: This script will permanently delete all PDF files found within:`);
    console.log(rootDir);
    console.log(`There is NO UNDO. Ensure you have backups or use version control.\n`);

    const proceed = await askConfirmation('Are you absolutely sure you want to proceed?');

    rl.close(); // Close the readline interface

    if (proceed) {
        console.log('\nStarting PDF deletion process...');
        console.log('--------------------------------------------------');
        await findAndDeletePdfs(rootDir); // Start the recursive deletion
        console.log('--------------------------------------------------');
        console.log('PDF deletion process finished.');
    } else {
        console.log('\nOperation cancelled by user. No files were deleted.');
    }
}

// Run the main function and handle any top-level errors
runDeletion().catch(error => {
    console.error("An unexpected error occurred during the main deletion process:", error);
    rl.close(); // Ensure readline is closed on error too
});