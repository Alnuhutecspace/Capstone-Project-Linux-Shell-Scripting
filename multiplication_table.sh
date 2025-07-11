#!/bin/bash

# -------------------------------
# Function: Validate user input
# -------------------------------
is_valid_number() {
    [[ "$1" =~ ^[0-9]+$ ]]
}

# -------------------------------
# Prompt: Ask the user for a number
# -------------------------------
read -p "Enter a number to generate its multiplication table: " number

# Input validation: Check if it's a valid non-negative integer
if ! is_valid_number "$number"; then
    echo "Error: Please enter a valid positive number."
    exit 1
fi

# -------------------------------
# Bonus: Ask for ascending or descending order
# -------------------------------
read -p "Do you want the table in ascending or descending order? (a/d): " order

# Normalize order input to lowercase
order=$(echo "$order" | tr '[:upper:]' '[:lower:]')

# Validate the order choice
if [[ "$order" != "a" && "$order" != "d" ]]; then
    echo "Error: Invalid choice. Please enter 'a' for ascending or 'd' for descending."
    exit 1
fi

echo ""
echo "==============================================="
echo "  Multiplication Table for $number (List Form)"
echo "==============================================="

# -------------------------------------
# Part 1: List Form For Loop (1..10)
# -------------------------------------

if [[ "$order" == "d" ]]; then 
    # Descending order using list form loop
    for i in {10..1}; do
        echo "$number x $i = $((number * i))"
    done
else
    # Ascending order using list form loop
    for i in {1..10}; do
        echo "$number x $i = $((number * i))"
    done
fi

echo ""
echo "==============================================="
echo "  Multiplication Table for $number (C-style)"
echo "==============================================="

# -------------------------------------
# Part 2: C-style For Loop (1 to 10)
# -------------------------------------

if [[ "$order" == "d" ]]; then
    # Descending order using C-style for loop
    for ((i=10; i>=1; i--)); do
        echo "$number x $i = $((number * i))"
    done
else
    # Ascending order using C-style for loop
    for ((i=1; i<=10; i++)); do
        echo "$number x $i = $((number * i))"
    done
fi

