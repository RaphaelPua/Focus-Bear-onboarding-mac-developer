
# Identifying and Fixing Code Smells

## What code smells did you find in your code?
- So my code had several of the common smells, including the magic numbers, long functions, some duplicated codes, deeply nested functions, and mixed naming of variables. Fixing and refactoring these smelly code made it easier for me to read the code and understand them. Some changes were more complicated such as needing to refactor codes, but other such as fixing the naming were easier to do. 

## How did refactoring improve the readability and maintainability of the code?
- Refactoring made the code easier to understand by breaking large functions into smaller, more focused functions. It also removed duplicated code, reducing the need to make the same changes in multiple places. Separating nested code and "if" statements made each section more readable and independent, making it easier to modify a specific function without affecting other parts of the code.

## How can avoiding code smells make future debugging easier?
- Avoiding code smells can make debugging easier because the code is more organised and predictable. When functions have clear tasks/responsibilities and less duplicated code, it is easier to identify where a problem is coming from and easier to change the problem without impacting the other functions. A good example is when I have to check a function which does the calculation, I would only need to look for that specific function and make changes for that function when I want to change the calculations. I do not need to check any other function as the issue will most likely be in that area. Reducing deeply nested conditions also makes it easier to trace how the program reaches a particular result. Overall, clean and maintainable code reduces the time needed to find and fix bugs.