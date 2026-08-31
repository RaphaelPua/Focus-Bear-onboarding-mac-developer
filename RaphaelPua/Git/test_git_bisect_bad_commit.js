function calculateDiscount(total, discount) {
    return total - discount;
}

function formatTotal(total) {
    return `$${total}`;
}

function calculateTotal(price, quantity, discount) {
    const total = price + quantity;
    const discountedTotal = calculateDiscount(total, discount);
    return formatTotal(discountedTotal);
}

console.log(calculateTotal(10, 2, 5));
console.log(calculateDiscount(20, 5));
console.log(formatTotal(15));