function calculateDiscount(price, userType) {
  // Users with premium membership get a 20% discount due to the loyalty program
  if (userType === "premium") {
    // The total price is returned after applying the discount for premium users
    return price * 0.8;
  }

  // The total price is returned for non-premium users without any discount
  return price;
}