# Research Summary

## 1. Simplicity

- Principle: Keep code as simple as possible.
- Simple code solves the problem without unnecessary abstractions, clever tricks, or complexity. A developer should be able to follow the logic without understanding unrelated parts of the system.

Why it matters:

- Easier to understand and debug.
- Reduces unnecessary complexity.
- Makes future changes safer.
- Avoids premature over-engineering.

## 2. Readability

- Principle: Code should be easy for a developer to understand.
- Code is written for computers to execute, but it is read by humans much more often. Meaningful variable and function names, sensible structure, clear formatting, and focused functions make the purpose of code easier to understand.

Why it matters:

- Reduces the time needed to understand unfamiliar code.
- Makes code reviews easier.
- Makes debugging easier.
- Helps new developers contribute faster.

## 3. Maintainability

- Principle: Future developers should be able to modify the code safely and easily.
- Code should be structured so that adding a feature, fixing a bug, or changing behaviour does not require understanding a huge amount of unrelated code.

Useful practices include:

- Keeping functions focused on one responsibility.
- Avoiding unnecessary coupling.
- Reusing appropriate existing functionality.
- Writing tests for important behaviour.
- Refactoring when complexity begins to build up.

## 4. Consistency

- Principle: Follow the project's style guides, naming conventions, and established patterns.
- Consistent code makes an unfamiliar codebase predictable.

Consistency includes:

- Naming conventions.
- Formatting and indentation.
- File and folder structure.
- Error-handling patterns.
- Framework and library conventions.
- Existing project architecture.

## 5. Efficiency

- Principle: Write code that performs well, but avoid premature optimisation.
- Efficient code uses appropriate algorithms, data structures, resources, and I/O operations. However, optimising before there is evidence that performance is a problem can make code unnecessarily complicated.

A good approach is:

- Write a simple and correct implementation.
- Measure performance where it matters.
- Identify actual bottlenecks.
- Optimise the bottleneck.
- Measure again to confirm the improvement.

# Clean Code Reflection

## Why is code formatting important?

- Code formatting is important because it makes code easier to read, understand, and maintain. Consistent formatting means that developers can quickly understand the structure of the code without having to interpret different formatting styles. This is especially important when working in a team because everyone can follow the same conventions.
- The addition of Prittier and ESlint was a game changer as it helps me with manually checking things like my format or issues, Really helps me focus on more important things such as the functionality of the code, instead of fixing the formattings.

## What issues did the linter detect?

- The linter detected any issues with my code, specifically with how some of my code has unused variables. It really helps with code that is overlooked by manual checking.

## Did formatting the code make it easier to read?

- Yes. Prettier made the code more consistent by automatically formatting which makes everything easier for me as I do not need to keep checking my formatting and wasting time to fix my indents. It asl really made it easier for me to understand the code.

- Overall, I found that using ESLint and Prettier reduces the amount of manual effort needed to maintain a consistent coding style. ESLint helps identify potential problems, while Prettier ensures that the code follows a consistent format.

# Naming Variables & Functions

## What makes a good variable or function name?

- A good function and variable names indicates their function intuitively. The variables should indicate what they are or what they store, while function names should tell you what they do. Following the naming conventions or formats is also important to remain consistent.
- For example, userId is clearer than x because it immediately explains what the value represents. Similarly, checkUserAccess() is more descriptive than doStuff() because it tells us what the function does. For functions that return a Boolean value, names such as isAdminUser() or hasPermission() are useful because they make it clear that the function is checking a condition.

## What issues can arise from poorly named variables?

- A poorly named variable will make it significantly harder for the code to be maintained or changed. It would further take time for the developer to change the code and help fix the issue as the developer may need to ask the one who made the code what the variables or functions do, or they would need to analyse the code more throughly first. It can also lead to issues as developers may mistake the variable or function for something else.

# Writing Small, Focused Functions

## How did refactoring improve code readability?

- The refactored version was easier to read because the purpose of each variable and function was immediately clear. I could understand what the code was doing without having to trace each variable or inspect the function implementation. Showing that meaningful names can make code easier to understand and maintain without changing its functionality.

## Why is breaking down functions beneficial?

- Breaking down the functions allows others to understand the each chunk of code easier to understand, test, maintain, and change. It helps with identifying where the issue is comming from, instead on trying to understand the whole function when everything is in it, and accidentally affecting the whole function when you are making changes. At least with seperate functions you are able to impact that one particular function and fix your mistakes. Functions is great for reusability, as you would only need to call the function instead on copy pasting code or making a new one.

## How did refactoring improve the structure of the code?

- Refactoring improved the overall structure and format of the function. It is now more understandable as each function helps indicate what the chunk of code does and lets me understand without eventually taking away the whole picture of what the main function is trying to do.
- The samller functions also makes it easier to test codes as each area can now be properly tested by calling the associated function. Thus finding and resolving issues is much easier.

# Avoiding Code Duplication

## What were the issues with duplicated code?

- Issues with duplicated code is that it just makes the code unnecessarily long, which may make it annoying and harder to make changes to the code. Additionally, it also makes it tedious to make changes as each function would need to change when one the same dependent code or information is changed. It can also lead to mistakes where some of the copies are not changed leading issues with the output. Thus, developers would look through a lot of codes and locations just to update, fix, or maintain code.

## How did refactoring improve maintainability?

- I refactored a new function that was being duplicated with the 3 original functions. This follows the DRY as one function now as the same logics are now in one function. The refactored code is easier to maintain because changes only need to be made in one location. This also makes the code more consistent because all functions use the same function. Overall, removing unnecessary duplication made the code shorter, easier to understand, and less prone to errors when changes are required.

# Refactoring Code for Simplicity

## What made the original code complex?
- So the code that I got had deep nested "if" statements which meant that it went like: if->if->if->else->else->etc. This mhas led me to go over each if statement and understand what happens next if it is true or not. It made it difficult to follow the overall code as the nested "if" statements made it look very complicated as it was conditional to the other "if" statements. The code itself was originally responsible for checking a lot of things such as if the user existed, if they were active, how much balance they have, etc. So all these "if" statements really made it difficult to analyse the code.

## How did refactoring improve it?
- I improved it by not only seperating each "if" statements into seperate functions, I also further improved its efficiency by adding early returns so the system does not have to go through the whole code before giving its log name. It can immediately just returns the given log message if it deems one of functions were not met. 
- Overall, the refactored code is more readable because the logic can be followed from top to bottom. It is also easier to maintain because I can check and make changes to different functions instead of modifying the whole large block of nested code.


# Comments & Documentation

## When should you add comments?
- Commetns should be used to further provice useful information that cannot be easily understood by the given code. This can be because an explanation/"Why" of the code is needed, the reason for creating the code is unintuitive/weird code, and decribing a business rule. This can help developers to further understand why this code is made, and it also makes it faster for them to understand the code itself and what are its inputs and outputs.

## When should you avoid comments and instead improve the code?
- You shold avoid commenting when improving the code already helps you understand the code is important because adding unnecessary comments can clutter the code and make it harder to look for the correct code. At times, using meaningful variables and naming, refactoring and breaking the code into smaller chunks improves the code enough to explain the code itself; and thus do not need comments to explain anything. I found that clear code can often explain what is happening without requiring comments. Comments are most useful when they explain the reasoning or context behind a decision rather than simply describing the code. Comments should be avoided when they simply describe what the code is already doing. For example, a comment such as `// Add 1 to age` is unnecessary when the code clearly shows `age = age + 1`.

# Handling Errors & Edge Cases

## What was the issue with the original code?
- The original code's issues that when calculating the average scores, the code did not account for cases when the input scores is blank, the input is a string, or just that the input is not an array. These issues would have lead to errors as these were not accounted for. Basically, the function did not check or validate its input before performing the calculation.


## How does handling errors improve reliability?
-  Handling errors helps with reliability as it allows the program to send out a message when encountering and error instead of showing errors or unexpected results. This will help the program to essentially send out an appropriate value or response which is then where the developer can make changes to the code based on the encountered error message.This also made the function easier to understand because the invalid cases are handled at the beginning, leaving the main part of the function focused on calculating the average.

# Writing Unit Tests

## How do unit tests help keep code clean?
- Unit test really help with keeping the code clean and realiable as it helps me check if the functions actually work as expected. It essentially helps with testing potential bugs in the early stages to avoid and make the code more robust.
- Unit tests also make refactoring safer because I can change the implementation of a function and run the tests to make sure its behaviour has not changed. The tests can also act as documentation because they show examples of how the function is expected to behave.
- I chose Jest as my testing framework because my the recent projects I used were from JavaScript and Jest provides a simple way to create and run unit tests. I wrote tests for my `calculateAverageScore()` function to check normal inputs as well as edge cases.

## What issues did you find while testing?
- I found that I was failing 2 of the original tests I made, specifically to test if it can catch errors with having "[]" arrays and null inputs. I didn't know why it was failing until I realised that the null i was using was "NULL" isntead of "null". After fixing this issue, the code passed the tests. This tool is really great as it helps tests the code I changed and also tells me what the problem with my code is as well. It helps detect behavior that is not to be expected which is very important in making a robust and accurate code. This demonstrated how unit testing can help identify problems and provide confidence when modifying code.

