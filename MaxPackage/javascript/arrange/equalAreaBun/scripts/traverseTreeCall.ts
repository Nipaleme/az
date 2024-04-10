import * as ts from 'typescript';
import * as path from 'path';

// Define the path to the TypeScript file you want to analyze
const filePath = path.resolve(__dirname,'..', 'src/partitions/eqPointSetPolar.ts');

// Function to recursively traverse the AST and analyze function calls
// function traverse(node: ts.Node, depth: number) {
//     if (ts.isCallExpression(node)) {
//         const functionName = (node.expression as ts.Identifier).getText();
//         console.log(`${' '.repeat(depth * 2)}- ${functionName}`);
//     }

//     ts.forEachChild(node, childNode => traverse(childNode, depth + 1));
// }

// // Parse the TypeScript file and traverse its AST
// const sourceFile = ts.createSourceFile(
//     filePath,
//     ts.sys.readFile(filePath) || '',
//     ts.ScriptTarget.Latest,
//     true
// );

// console.log(`Call tree structure of ${filePath}:`);
// traverse(sourceFile, 0);


// Function to parse the TypeScript file and extract function imports and calls
function inspectFunctions(filePath: string) {
    // Create a TypeScript program from the file
    const program = ts.createProgram([filePath], {});
    const sourceFile = program.getSourceFile(filePath);

    if (sourceFile) {
        // Collect imported function names
        const importedFunctions: string[] = [];
        ts.forEachChild(sourceFile, node => {
            if (ts.isImportDeclaration(node) && node.importClause) {
                const imports = node.importClause.namedBindings as ts.NamedImports;
                if (imports && imports.elements) {
                    imports.elements.forEach(element => {
                        importedFunctions.push(element.name.escapedText);
                    });
                }
            }
        });

        // Collect called function names
        const calledFunctions: string[] = [];
        ts.forEachChild(sourceFile, node => {
            if (ts.isCallExpression(node)) {
                calledFunctions.push((node.expression as ts.Identifier).getText());
            }
        });

        console.log(`Imported functions: ${importedFunctions.join(', ')}`);
        console.log(`Called functions: ${calledFunctions.join(', ')}`);
    } else {
        console.error(`File not found: ${filePath}`);
    }
}

// Inspect functions in the TypeScript file
inspectFunctions(filePath);