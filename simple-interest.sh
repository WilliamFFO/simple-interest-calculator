#!/bin/bash

# Simple Interest Calculator
# Formula: Simple Interest = (Principal * Rate * Time) / 100
# Author: Simple Interest Calculator Project
# License: Apache 2.0

echo "==================================="
echo "  Simple Interest Calculator"
echo "==================================="
echo ""

# Get principal amount
echo -n "Enter Principal amount (P): "
read principal

# Get rate of interest
echo -n "Enter Rate of Interest (R) in %: "
read rate

# Get time period
echo -n "Enter Time period (T) in years: "
read time

# Validate inputs (check if they are numbers)
if ! [[ "$principal" =~ ^[0-9]+\.?[0-9]*$ ]] || ! [[ "$rate" =~ ^[0-9]+\.?[0-9]*$ ]] || ! [[ "$time" =~ ^[0-9]+\.?[0-9]*$ ]]; then
    echo ""
    echo "Error: Please enter valid numeric values for Principal, Rate, and Time."
    exit 1
fi

# Calculate simple interest
# Formula: SI = (P * R * T) / 100
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate total amount (Principal + Interest)
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo ""
echo "==================================="
echo "           RESULTS"
echo "==================================="
echo "Principal Amount:     $ $principal"
echo "Rate of Interest:     $rate %"
echo "Time Period:          $time years"
echo "-----------------------------------"
echo "Simple Interest:      $ $simple_interest"
echo "Total Amount:         $ $total_amount"
echo "==================================="
