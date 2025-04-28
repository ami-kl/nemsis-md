// Import necessary modules
const fs = require('fs').promises; // Use promises for async file operations
const path = require('path');
const pdf = require('pdf-parse');

// --- Configuration ---
// Set the root directory to scan for PDFs.
// Adjust this path if your script isn't in the directory directly containing NEMSIS_SOURCE
const rootDir = path.join(__dirname, 'NEMSIS_SOURCE');
// --- End Configuration ---

/**
 * Converts a single PDF file to a Markdown file containing its text content.
 * @param {string} pdfFilePath Full path to the PDF file.
 */
async function convertPdfToMarkdown(pdfFilePath) {
    try {
        console.log(`Processing: ${pdfFilePath}`);

        // 1. Read the PDF file buffer
        const dataBuffer = await fs.readFile(pdfFilePath);

        // 2. Parse the PDF buffer to extract text
        const pdfData = await pdf(dataBuffer);
        const textContent = pdfData.text; // Get the extracted text

        // 3. Determine the output Markdown file path
        const dirName = path.dirname(pdfFilePath);
        const baseNameWithoutExt = path.basename(pdfFilePath, '.pdf');
        const markdownFilePath = path.join(dirName, `${baseNameWithoutExt}.md`);

        // 4. Write the extracted text to the new Markdown file
        await fs.writeFile(markdownFilePath, textContent || ''); // Write text or empty string if nothing extracted
        console.log(`  -> Converted to: ${markdownFilePath}`);

    } catch (error) {
        console.error(`  -> FAILED to convert ${pdfFilePath}:`, error.message || error);
        // Optionally log the full error: console.error(error);
    }
}

/**
 * Recursively scans a directory for PDF files and initiates their conversion.
 * @param {string} directoryPath Path to the directory to scan.
 */
async function findAndConvertPdfs(directoryPath) {
    try {
        const entries = await fs.readdir(directoryPath, { withFileTypes: true });
        const conversionPromises = []; // Store promises for concurrent processing

        for (const entry of entries) {
            const fullPath = path.join(directoryPath, entry.name);

            if (entry.isDirectory()) {
                // If it's a directory, recurse into it
                // Add the promise returned by the recursive call to the list
                conversionPromises.push(findAndConvertPdfs(fullPath));
            } else if (entry.isFile() && path.extname(entry.name).toLowerCase() === '.pdf') {
                // If it's a PDF file, add its conversion promise to the list
                conversionPromises.push(convertPdfToMarkdown(fullPath));
            }
        }

        // Wait for all conversions/recursive calls in this directory to complete
        await Promise.all(conversionPromises);

    } catch (error) {
        console.error(`Error reading directory ${directoryPath}:`, error);
    }
}

// --- Main Execution ---
async function runConversion() {
    console.log(`Starting PDF to Markdown conversion in: ${rootDir}`);
    console.log('--------------------------------------------------');

    await findAndConvertPdfs(rootDir); // Start the recursive process

    console.log('--------------------------------------------------');
    console.log('Conversion process finished.');
}

// Run the main function and handle any top-level errors
runConversion().catch(error => {
    console.error("An unexpected error occurred during the main process:", error);
});