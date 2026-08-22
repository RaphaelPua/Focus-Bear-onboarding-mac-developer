function calculateTotal(price, quantity) {
    const total = price + quantity;
    return total;
}

function calculateDiscount(total, discount) {
    return total - discount;
}

console.log(calculateTotal(10, 2));

