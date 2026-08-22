function calculateTotal(price, quantity) {
    const total = price + quantity;
    return total;
}

function calculateTotalDiscount(total, discount_percentage) {
    const discount = total * discount_percentage;
    return discount;
}

function calculateDiscount(total, discount) {
    return total - discount;
}

function formatTotal(total) {
    return `$${total}`;
}

console.log(calculateTotal(10, 2));
