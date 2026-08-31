function calculateAverageScore(scores) {
    
    if (!Array.isArray(scores)) {
        return null; // Return null if the input is not an array
    }

    if (scores.length === 0) {
        return null; // Return null if the scores array is empty to avoid division by zero
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

console.log(calculateAverageScore([80, 90, 70]));
console.log(calculateAverageScore([]));
console.log(calculateAverageScore(null));
console.log(calculateAverageScore("hello"));
console.log(calculateAverageScore([80, "hi"])); 