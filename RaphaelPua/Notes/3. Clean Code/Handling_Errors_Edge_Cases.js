function calculateAverageScore(scores) {
    
    if (!Array.isArray(scores)) {
        return NULL; // Return NULL if the input is not an array
    }

    if (scores.length === 0) {
        return NULL; // Return NULL if the scores array is empty to avoid division by zero
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