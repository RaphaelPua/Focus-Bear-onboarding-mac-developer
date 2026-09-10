function calculateAverageScore(scores) {
    
    if (!Array.isArray(scores)) {
        return null; // Return null if the input is not an array
    }

    if (scores.length === 0) {
        return null; // Return NULL if the scores array is empty to avoid division by zero
    }

    for (let i = 0; i < scores.length; i++) {
        if (typeof scores[i] !== 'number' || Number.isNaN(scores[i])) {
            return null; // Return null if any item isn't a valid number
            }
    }

    let total = 0;

    for (let i = 0; i < scores.length; i++) {
        total += scores[i];
    }

    return total / scores.length;
}

test("calculates the average score", () => {
  expect(calculateAverageScore([80, 90, 70])).toBe(80);
});

test("calculates the average of two scores", () => {
  expect(calculateAverageScore([60, 80])).toBe(70);
});

test("returns null for an empty array", () => {
  expect(calculateAverageScore([])).toBe(null);
});

test("returns null for invalid input", () => {
  expect(calculateAverageScore(null)).toBe(null);
});

test("returns null for finding an invalid input within the array", () => {
  expect(calculateAverageScore([80, 'hi', 70])).toBe(null);
});