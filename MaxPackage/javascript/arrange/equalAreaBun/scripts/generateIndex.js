import fs from "fs";
import path from "path";

const srcDir = path.resolve(__dirname, "..", "src");
const indexFilePath = path.resolve(srcDir, "index.ts");

const generateIndex = async (directory) => {
    try {
      // Get list of files in the directory
      const files = fs.readdirSync(directory);
  
      // Process each file
      for (const file of files) {
        const filePath = path.join(directory, file);
        const stats = fs.statSync(filePath);
  
        // If it's a directory, recurse into it
        if (stats.isDirectory()) {
          await generateIndex(filePath);
        } else if (file.endsWith('.ts')) {
          // If it's a TypeScript file, add export statement
          const relativePath = path.relative(srcDir, filePath);
          const exportName = relativePath.replace('.ts', '').replace(/[\\/]/g, '_');
          fs.appendFileSync(indexFilePath, `export * from './${relativePath.replace('.ts', '')}';\n`);
          console.log(`Exported module: ${exportName}`);
        }
      }
    } catch (error) {
      console.error('Error generating index file:', error);
    }
  };
  
  // Clear index.ts file before generating
  fs.writeFileSync(indexFilePath, '');
  
  // Generate index.ts recursively starting from src directory
  generateIndex(srcDir).then(() => {
    console.log(`Index file generated at: ${indexFilePath}`);
  });