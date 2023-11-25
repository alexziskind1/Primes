#!/bin/bash

allowed_solutions=("PrimePython/solution_1" "PrimeJava/solution_1" "PrimeC/solution_1" "PrimeCPP/solution_3" "PrimeCSharp/solution_1" "PrimeRust/solution_1" "PrimeGo/solution_1" "PrimeKotlin/solution_1" "PrimeTypeScript/solution_1" "PrimePHP/solution_1" "PrimeZig/solution_1")

# Loop over all allowed solutions
for solution in ${allowed_solutions[@]}; do
    # Run the make command for the solution
    mkdir -p "results/results_$(dirname $solution)"

    echo "Running make command for solution: $solution"
    make DIRECTORY=$solution FORMATTER=csv > "results/results_${solution}.csv"
done