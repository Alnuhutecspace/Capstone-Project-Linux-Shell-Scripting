#!/bin/bash

# -------------------------------
# Function: Validate input between 1 and 10
# -------------------------------
is_valid_range() {
    [[ "$1" =~ ^[0-9]+$ ]] && (( $1 >= 1 && $1 <= 10 ))
}

# -------------------------------
# Function: Prompt user for number (1-10)
# -------------------------------
get_valid_number() {
    while true; do
        read -p "Enter a number between 1 and 10: " number
        if is_valid_range "$number"; then
            break
        else
            echo "Invalid input. Please enter a number between 1 and 10."
        fi
    done
}

# -------------------------------
# Function: Ask for order (asc/desc)
# -------------------------------
get_order_choice() {
    while true; do
        read -p "Do you want the table in ascending or descending order? (a/d): " order
        order=$(echo "$order" | tr '[:upper:]' '[:lower:]')

        if [[ "$order" == "a" || "$order" == "d" ]]; then
            break
        else
            echo "Invalid input. Enter 'a' for ascending or 'd' for descending."
        fi
    done
}

# -------------------------------
# Function: Print multiplication table
# -------------------------------
print_multiplication_table() {
    echo ""
    echo "==============================================="
    echo "  Multiplication Table for $number"
    echo "==============================================="

    if [[ "$order" == "d" ]]; then
        for ((i=10; i>=1; i--)); do
            echo "$number x $i = $((number * i))"
        done
    else
        for ((i=1; i<=10; i++)); do
            echo "$number x $i = $((number * i))"
        done
    fi
    echo ""
}

# -------------------------------
# Function: Ask user if they want to repeat
# -------------------------------
ask_to_continue() {
    while true; do
        read -p "Do you want to generate another table? (y/n): " choice
        choice=$(echo "$choice" | tr '[:upper:]' '[:lower:]')

        if [[ "$choice" == "y" ]]; then
            return 0  # continue
        elif [[ "$choice" == "n" ]]; then
            return 1  # exit loop
        else
            echo "Please enter 'y' for yes or 'n' for no."
        fi
    done
}

# -------------------------------
# Main Program Execution
# -------------------------------
main() {
    echo "Welcome to the Multiplication Table Generator!"
    echo "-----------------------------------------------"

    while true; do
        get_valid_number
        get_order_choice
        print_multiplication_table

        if ! ask_to_continue; then
            echo "Goodbye!"
            break
        fi
    done
}

# Run the main function
main

