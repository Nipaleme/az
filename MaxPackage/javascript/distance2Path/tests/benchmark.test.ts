function benchmarkAtan2(values, iterations) {
    const start = performance.now();
    for (let i = 0; i < iterations; i++) {
        for (const [x, y] of values) {
            Math.atan2(y, x);
        }
    }
    const end = performance.now();
    return end - start;
}

function benchmarkSqrt(values, iterations) {
    const start = performance.now();
    for (let i = 0; i < iterations; i++) {
        for (const [x, y] of values) {
            Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2));
        }
    }
    const end = performance.now();
    return end - start;
}

const iterations = 10000; // Adjust the number of iterations as needed
const numPoints = 10000; // Adjust the number of points as needed

// Generate random values for x and y coordinates
const randomValues = Array.from({ length: numPoints }, () => [
    Math.random() * 100, // Adjust the range as needed
    Math.random() * 100  // Adjust the range as needed
]);

const atan2Time = benchmarkAtan2(randomValues, iterations);
const sqrtTime = benchmarkSqrt(randomValues, iterations);

console.log(`Time taken for ${iterations} iterations of Math.atan2: ${atan2Time.toFixed(4)} ms`);
console.log(`Time taken for ${iterations} iterations of Math.sqrt(Math.pow(x, 2) + Math.pow(y, 2)): ${sqrtTime.toFixed(4)} ms`);
