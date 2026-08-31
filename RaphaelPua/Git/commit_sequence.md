# Commit Sequence

1. create price calculation function function (first good commit)
    
- Calculated function with console.log(calculateTotal(10, 2)); where the answer must be 20

2. create discount calculation function (good commit)

- Calculated extra function with console.log(calculateDiscount(20, 5)); where the answer must be 15

3. change price calculation into (price + total quantity; bad commit) 

- Calculated function with console.log(calculateTotal(10, 2)); where the answer must be 20
- Calculated extra function with console.log(calculateDiscount(20, 5)); where the answer must be 15

4. add total calculation function (bad commit)

- Added a main function that calculates the overall total and discounted amount 
- Calculated extra function with console.log(calculateTotal(10, 2, 5));; where the answer must be 15 
- Answer was 7

5. change price label description (start of bad commit)

- Added formatting function
- Calculated extra function with console.log(calculateTotal(10, 2, 5));; where the answer must be $15 
- Answer was $7