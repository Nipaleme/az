import type { Point } from "./index";

export function sortByConvexHull(points: Point[]) {
  // Sort points based on x-coordinate (and then by y-coordinate if x-coordinates are equal)
  points.sort((a, b) => a.x - b.x || a.y - b.y);

  // Helper function to calculate the cross product of three points
  function crossProduct(p1, p2, p3) {
    return (p2.x - p1.x) * (p3.y - p1.y) - (p2.y - p1.y) * (p3.x - p1.x);
  }

  // Find the upper and lower hulls using Graham Scan algorithm
  const upperHull = [] as Point[];
  const lowerHull = [] as Point[];
  for (const point of points) {
    while (
      upperHull.length >= 2 &&
      crossProduct(
        upperHull[upperHull.length - 2],
        upperHull[upperHull.length - 1],
        point
      ) <= 0
    ) {
      upperHull.pop();
    }
    upperHull.push(point);
    while (
      lowerHull.length >= 2 &&
      crossProduct(
        lowerHull[lowerHull.length - 2],
        lowerHull[lowerHull.length - 1],
        point
      ) >= 0
    ) {
      lowerHull.pop();
    }
    lowerHull.push(point);
  }

  // Combine upper and lower hulls, excluding first and last points
  const convexHull = upperHull.concat(lowerHull.reverse().slice(1, -1));

  return convexHull;
}

export function sortByQuickHull(points: Point[]) {
  // Sort points based on x-coordinate (and then by y-coordinate if x-coordinates are equal)
  points.sort((a, b) => a.x - b.x || a.y - b.y);

  // Find the convex hull using the Quick Hull algorithm
  const quickHull = (points) => {
    if (points.length <= 1) return points;

    const findSide = (p1: Point, p2: Point, p) => {
      const cross = (p2.x - p1.x) * (p.y - p1.y) - (p2.y - p1.y) * (p.x - p1.x);
      return cross > 0 ? 1 : cross < 0 ? -1 : 0;
    };

    const findHull = (
      p1: Point,
      p2: Point,
      points: Point[],
      side,
      hull = [] as Point[]
    ) => {
      const maxDistIndex = points.reduce(
        (maxIndex, point, index) => {
          const dist = Math.abs(
            (p2.x - p1.x) * (point.y - p1.y) - (p2.y - p1.y) * (point.x - p1.x)
          );
          return dist > maxIndex[1] && findSide(p1, p2, point) === side
            ? [index, dist]
            : maxIndex;
        },
        [-1, 0]
      )[0];

      if (maxDistIndex === -1) {
        hull.push(p1, p2);
        return hull;
      }

      const newPoints = points.filter((point, index) => {
        return (
          index !== maxDistIndex &&
          findSide(p1, points[maxDistIndex], point) === side
        );
      });

      findHull(
        p1,
        points[maxDistIndex],
        newPoints,
        -findSide(p1, points[maxDistIndex], p2),
        hull
      );
      findHull(
        points[maxDistIndex],
        p2,
        newPoints,
        -findSide(points[maxDistIndex], p2, p1),
        hull
      );

      return hull;
    };

    const leftmost = points[0];
    const rightmost = points[points.length - 1];

    const upperHull = findHull(leftmost, rightmost, points, 1);
    const lowerHull = findHull(leftmost, rightmost, points, -1);

    return [...upperHull, ...lowerHull.slice(1, -1)];
  };

  // Remove duplicate points
  const uniquePoints = Array.from(
    new Set(points.map((point) => JSON.stringify(point)))
  ).map((str) => JSON.parse(String(str)));

  // Find the convex hull using the Quick Hull algorithm
  const convexHull = quickHull(uniquePoints);

  return convexHull;
}

// Function to generate permutations of an array
function permute(arr: Array<any>) {
  const result = [] as Array<any>;

  const permuteRecursive = (arr: Array<any>, start: number) => {
    if (start === arr.length - 1) {
      result.push([...arr]);
      return;
    }

    for (let i = start; i < arr.length; i++) {
      [arr[start], arr[i]] = [arr[i], arr[start]]; // Swap elements
      permuteRecursive(arr, start + 1);
      [arr[start], arr[i]] = [arr[i], arr[start]]; // Restore original order
    }
  };

  permuteRecursive(arr, 0);

  return result;
}

function calculatePerimeter(points) {
  return points.reduce((perimeter, currentPoint, currentIndex, array) => {
    const nextIndex = (currentIndex + 1) % array.length; // Wrap around to the first point if it's the last point
    const nextPoint = array[nextIndex];

    // Calculate the distance between currentPoint and nextPoint
    const distance = Math.sqrt(
      Math.pow(nextPoint.x - currentPoint.x, 2) +
        Math.pow(nextPoint.y - currentPoint.y, 2)
    );

    // Add the distance to the perimeter
    return perimeter + distance;
  }, 0);
}

export function findOptimalArrangement(points: Point[]) {
  let minPerimeter = Infinity;
  let optimalArrangement = points.slice(); // Copy the original array

  // Generate permutations of points
  const permutations = permute(points);

  // Iterate through each permutation and calculate perimeter
  permutations.forEach((permutation) => {
    const currentPerimeter = calculatePerimeter(permutation);
    if (currentPerimeter < minPerimeter) {
      minPerimeter = currentPerimeter;
      optimalArrangement = permutation;
    }
  });

  return optimalArrangement;
}
// Function to calculate the Euclidean distance between two points
function distance(point1, point2) {
  const dx = point1.x - point2.x;
  const dy = point1.y - point2.y;
  return Math.sqrt(dx * dx + dy * dy);
}

// Function to calculate the total length of a path
function calculatePathLength(path) {
  let totalLength = 0;
  for (let i = 0; i < path.length - 1; i++) {
    totalLength += distance(path[i], path[i + 1]);
  }
  totalLength += distance(path[path.length - 1], path[0]); // Add distance from last point to first point
  return totalLength;
}
// Function to perform the Simulated Annealing optimization inspired by https://dmhacker.github.io/sim/tsp/
export function simulatedAnnealing(
  points: Point[],
  temperature: number,
  coolingRate: number
) {
  let currentSolution = points.slice(); // Initial solution
  let currentScore = calculatePathLength(currentSolution); // Initial score
  let bestSolution = currentSolution; // Best solution found so far
  let bestScore = currentScore; // Score of the best solution
  let iteration = 0;

  while (temperature > 1) {
    const newSolution = currentSolution.slice(); // Create a copy of the current solution
    const i = Math.floor(Math.random() * (newSolution.length - 1)) + 1; // Random index to swap
    const j = Math.floor(Math.random() * (newSolution.length - 1)) + 1; // Random index to swap
    [newSolution[i], newSolution[j]] = [newSolution[j], newSolution[i]]; // Swap points

    const newScore = calculatePathLength(newSolution); // Calculate the length of the new path

    // Acceptance probability based on Metropolis criterion
    const acceptProbability = Math.exp((currentScore - newScore) / temperature);

    if (Math.random() < acceptProbability) {
      currentSolution = newSolution;
      currentScore = newScore;
      if (newScore < bestScore) {
        bestSolution = currentSolution;
        bestScore = newScore;
      }
    }

    temperature *= coolingRate; // Decrease the temperature
    iteration++;
  }

  return bestSolution;
}

export function naiveApproach(points: Point[]) { // inspired by https://dmhacker.github.io/sim/tsp/
  let currentSolution = points.slice(); // Initial solution
  let currentScore = calculatePathLength(currentSolution); // Initial score

  // Usually takes about 1000-10000 iterations to solve
  for (let k = 0; k < 10000; k++) {
    const newSolution = currentSolution.slice(); // Create a copy of the current solution
    const i = Math.floor(Math.random() * (newSolution.length - 1)) + 1; // Random index to swap
    const j = Math.floor(Math.random() * (newSolution.length - 1)) + 1; // Random index to swap
    [newSolution[i], newSolution[j]] = [newSolution[j], newSolution[i]]; // Swap points

    const newScore = calculatePathLength(newSolution); // Calculate the length of the new path

    if (newScore < currentScore) {
      currentSolution = newSolution;
      currentScore = newScore;
    }
  }

  return currentSolution;
}


export function solveTSP(points: Point[]) { // inspired by https://reintech.io/blog/solving-travelling-salesman-problem-javascript
  // Number of points
  const n = points.length;

  // Adjacency matrix representing the distances between points
  const graph = new Array(n).fill(0).map(() => new Array(n).fill(0));

  // Calculate distances between points and populate the adjacency matrix
  for (let i = 0; i < n; i++) {
    for (let j = 0; j < n; j++) {
      graph[i][j] = Math.sqrt(
        Math.pow(points[i].x - points[j].x, 2) +
          Math.pow(points[i].y - points[j].y, 2)
      );
    }
  }

  // Initialize variables
  let shortestDistance = Infinity;
  let shortestPath = [];

  // Visited array to keep track of visited vertices
  const v = new Array(n).fill(false);

  // Recursive function for the TSP
  function TSP(
    graph: number[][],
    v: boolean[],
    currPos: number,
    n: number,
    count: number,
    cost: number
  ) {
    //If the last node is reached and it has a link to the starting node
    if (count == n && graph[currPos][0]) {
      shortestDistance = Math.min(shortestDistance, cost + graph[currPos][0]);
      return;
    }
    //BACKTRACKING
    for (let i = 0; i < n; i++) {
      if (!v[i] && graph[currPos][i]) {
        //Check if this vertex can be visited
        v[i] = true;
        TSP(graph, [...v], i, n, count + 1, cost + graph[currPos][i]);
        v[i] = false; //Mark as unvisited for other recursive calls
      }
    }
  }

  // Start the TSP from the first point (index 0)
  TSP(graph, v, 0, n, 0, 0);

  // Construct the sorted array of points based on the shortest path found
  const sortedPoints = shortestPath.map((index) => points[index]);

  // Return the sorted array of points
  return sortedPoints;
}

export function sortByDistance(points: Point[]) {
 // Create a copy of the points array to avoid modifying the original array
 const sortedPoints = points.slice();

 // Calculate the distance between each pair of points and sort the array accordingly
 sortedPoints.sort((a, b) => {
   const distA = Math.sqrt(Math.pow(a.x - b.x, 2) + Math.pow(a.y - b.y, 2));
   const distB = Math.sqrt(Math.pow(b.x - a.x, 2) + Math.pow(b.y - a.y, 2));
   return distA - distB;
 });

 return sortedPoints;
}
