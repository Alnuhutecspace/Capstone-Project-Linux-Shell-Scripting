# Capstone-Project-Linux-Shell-Scripting 

A Capstone Project on Linux Shell Scripting is a great way to showcase your skills in automating tasks, managing systems, and writing efficient scripts. 

## Bash Script for Generating a Multiplication  Table 

**Objective:** Create a Bash script that generate a multiplication table for a number entered by the user. This project will help you practice using loops, handling user input and applying conditional logic in Bash scripting.

## Project Description

Your script should prompt the user to enter a number and ask if they prefer to see a full multiplication table from 1 to 10 or a partial table within a specified range. Based on the user's choice, the script will display the corresponding multiplication table. 

## Project Requirement

- **User input for number:** The script must first ask the user to input a number for which the multiplication table will be generated.

**Choice of Table Range:** Next ask the user if they want a full multiplication table (1 to 10) or a partial table. If they choose partial, prompt them for the start and end of the range. 

**Use Loops:** Implement the logic to generate the multiplication table using loops. You may use either the list form or C-style for loops base on what's appropriate.

**Conditional Logic:** Use if-else statements to handle the logic base on the user's choices (full vs partial table and valid range input). 

**Input Validation:** Ensure the user enters valid numbers for the multiplication table and the specified range. Provide feedback for invalid inputs and default to a full table if the range is incorrect.

**Readable Output:** Display the multiplication table in a clear and readable format, adhering to the user's choice of range.

**Comments and Code Quality:** Your script should be well-commented, explaining the purpose of different sectors and any important variables or logic used. Ensure the code is neatly formatted for easy readability.

**Example Script Flow:**

1. Prompt the user to enter a number for the multiplication table

2. Ask if the want full table or a partial table

    - if partial, prompt for the start and end number of the range.

3. Validate the range inputs and handle invalid or out of bound entries.

4. Generate and display the multiplication table according to the specified range

5. Provide clear output formating for ease reading. Bonus

6. Enhance user interaction: Incooperate additional checks or features, like repeating the program for another number without restarting the script.

7. Creative Display Options: Offer different formatting styles for the table display and let the user choose. 

Below is an example output for a full multiplication. 

![Full Multi Table Examle](./img/01.%20Multi_Table_Example.png)

Below is an example output for partial table display: 

- If the user chooses a partial table. 

![Partial Table](./img/02.%20Partial%20Table.png) 

**Handling Invalid Range** If the user enters an invalid range:

![Invalid Range](./img/03.%20Invalid%20Range.png) 

## Assessment 

This project is designed to be a practical application of bash scripting fundamentals, focusing on loops, conditional logic, and user input interaction. By completing this task, you will gain valuable experience in automating tasks and improving your scripting proficiency.

**Objective:** Write a bash script that generates a multiplication table for a given number. The script should prompt the user to enter a number and then display the multiplication table for that number up to 10. Your task is to use both styles of for loops to achieve this: the list form and the C-style form.

**Part 1: Using List Form For List**
Prompt the user: First, your script should ask the user to input a number. Use the read command to capture this input into a variable.

Generate Multiplication Table: Use a list form **for** loop to iterate through the numbers 1 to 10. In each iteration, calculate the product of the user's number and the iterator variable, then print the result in a clear format. 

**Part 2: Using C-style For Loop**
Repeat the promt: You dont have need to ask the user again if you're making this a single script, just proceed with the C-style loop using same variable.

Generate Multiplication Table with C-style Loop: Now write a C-style for loop to achieve the same task as in part 1. Compare how this approach differ from the list form loop in terms of syntax and clarity. 

**Guidelines:**

- Make sure the output is user-friendly and clearly formatted.

- Comment your code to explain which part is using the list form an which part is using the C-style.

Bonus: Ask the user if they want to see the table in ascending or descending order and implement this feature using if-else statements combine with your loop of choice.

## Project Implementation 

Creating multiplication-table.sh file and making the file executable.

![Multiplication Table](./img/04.%20Multiplcation%20Table.png) 

![Multiplication Table Cont.](./img/05.%20Multiplication%20Table%20Cont..png) 

![Multiplication Table Cont.](./img/06.%20%20Multiplication%20Table%20Cont..png)

![Multiplication Table Cont.](./img/07.%20%20Multiplication%20Table%20Cont..png) 

Running the script list form and c-style ascending and descending type. 

![Multiplication Table Asceding](./img/08.%20Multiplication%20Table%20Ascending.png) 

![Multiplication Table Ascending](./img/09.%20Multiplication%20Table%20Ascending%20Cont..png) 

![ultiplication Table Desceding](./img/10.%20Multiplication%20Table%20Descending.png) 

![ultiplication Table Descending Cont.](./img/11.%20Multiplication%20Table%20Descending%20Cont.png) 

This above Bash script generates a multiplication table for a user-specified number. It begins by prompting the user to enter a number and uses the is valid number function to ensure the input is a non-negative integer. If the input is invalid, the script exits with an error message. Next, it asks the user whether they want the multiplication table in ascending or descending order, normalizes the input to lowercase, and validates it. The script then prints the multiplication table in two formats: first using a list-form loop (for i in {1..10} or {10..1} depending on the order), and second using a C-style loop (for ((i=1; i<=10; i++)) or for ((i=10; i>=1; i--))). Both sections display the results in the chosen order (ascending or descending), demonstrating two common loop styles in Bash.

## Multiplication Table Repeat (Prompt for More Entry) 

This is a simple multiplication table generator written in Bash. After greeting the user, it uses the get valid number function to ask them to provide a number between 1 and 10, ensuring that the input is valid within the given range. The get order choice function then asks the user if they would prefer the table to be in descending or ascending order. The print multiplication table function outputs the multiplication table of the selected number in the provided order (either descending from 10 to 1 or ascending from 1 to 10) based on the input. Once the table has been displayed, the script calls ask to continue to see if the user wishes to create another table. If so, the loop repeats; if not, it ends with a farewell message. Throughout, input validation guards against incorrect responses and guarantees a seamless connection. 

![Multiplication Table Repeat](./img/12.%20Multiplication%20Table%20Repeat.png) 

![Multiplication Table Repeat Cont.](./img/13.%20Multiplication%20Table%20Repeat%20Cont..png) 

![Multiplication Table Repeat Cont.](./img/14.%20Multiplication%20Table%20Repeat%20Cont..png)

![Multiplication Table Repeat Run](./img/15.%20Multiplication%20Table%20Repeat%20Run.png) 

## Updated Multiplication Table 

This enhanced Bash script generates customized multiplication tables based on user input. It begins by welcoming the user and prompting them to enter a number between 1 and 10, ensuring validity with the get valid number function. The user is then asked to choose the order—ascending or descending—via the get order choice function. Next, using get table type, the script lets the user select between a full table (1–10), partial table (1–5), or a custom range, with validation handled in get_custom_range to ensure inputs stay within the 1–10 bounds and that the start is not greater than the end. Based on these choices, the print multiplication table function displays the table accordingly using a C-style loop. After displaying the table, ask to continue determines whether the user wants to generate another table, repeating the process or exiting with a goodbye message. This structured flow ensures robust input validation and a user-friendly experience with flexible output customization. 

![Updated Multiplication Run](./img/16.%20Updated%20Multiplication%20Table%20Run.png) 

![Updated Multiplication Table](./img/17.%20Updated%20Multiplication%20Table.png)

![Updated Multiplication Table Cont.](./img/18.%20Updated%20Multiplication%20Table%20Cont..png)

![Updated Multiplication Table Cont.](./img/19.%20Update%20Multiplication%20Cont..png) 

## Conclusion 

In conclusion, these three Bash scripts progressively build upon each other to create a robust and interactive multiplication table generator. The first script introduces basic input validation and looping to allow repeated table generation in either ascending or descending order. The second script adds depth by demonstrating two different looping techniques list-form and C-style for educational variety while maintaining input validation and order selection. The third and most advanced script enhances user control by allowing full, partial, or custom table ranges, integrating comprehensive input validation and flexible output options. Together, these scripts showcase key Bash scripting concepts such as user input handling, conditional logic, loops, and function modularity, making them a valuable learning tool for beginners and a practical utility for simple arithmetic tasks.
