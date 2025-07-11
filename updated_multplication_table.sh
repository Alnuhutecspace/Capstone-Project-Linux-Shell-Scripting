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
# Function: Ask for table type
# -------------------------------
get_table_type() {
    while true; do
        echo ""
        echo "Choose the type of multiplication table:"
        echo "  f - Full table (1 to 10)"
        echo "  p - Partial table (1 to 5)"
        echo "  c - Custom range"
        read -p "Your choice (f/p/c): " table_type
        table_type=$(echo "$table_type" | tr '[:upper:]' '[:lower:]')

        if [[ "$table_type" == "f" || "$table_type" == "p" || "$table_type" == "c" ]]; then
            break
        else
            echo "Invalid input. Enter 'f', 'p', or 'c'."
        fi
    done

    if [[ "$table_type" == "f" ]]; then
        start=1
        end=10
    elif [[ "$table_type" == "p" ]]; then
        start=1
        end=5
    else
        get_custom_range
    fi
}

# -------------------------------
# Function: Get custom range
# -------------------------------
get_custom_range() {
    while true; do
        read -p "Enter starting multiplier (1-10): " start
        read -p "Enter ending multiplier (1-10): " end

        if is_valid_range "$start" && is_valid_range "$end"; then
            if (( start <= end )); then
                break
            else
                echo "Start must be less than or equal to end."
            fi
        else
            echo "Invalid input. Both values must be between 1 and 10."
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
        for ((i=end; i>=start; i--)); do
            echo "$number x $i = $((number * i))"
        done
    else
        for ((i=start; i<=end; i++)); do
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
        get_table_type
        print_multiplication_table

        if ! ask_to_continue; then
            echo "Goodbye!"
            break
        fi
    done
}

# Run the main function
main

