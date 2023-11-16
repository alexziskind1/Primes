allowed_solutions=("PrimePython/solution_1" "PrimeJava/solution_1" "PrimeC/solution_1" "PrimeCPP/solution_3" "PrimeCSharp/solution_1" "PrimeRust/solution_1" "PrimeGo/solution_1" "PrimeKotlin/solution_1" "PrimeTypeScript/solution_1" "PrimePHP/solution_1" "PrimeZig/solution_1")

# Loop over all 'Prime*' directories
for dir in Prime*; do
    # Loop over all subdirectories
    for subdir in $dir/*; do
        # Check if the subdirectory is not in the list of allowed solutions
        if [[ ! " ${allowed_solutions[@]} " =~ " ${subdir} " ]]; then
            # Delete the subdirectory
            echo "Deleting subdirectory: $subdir"
            rm -rf $subdir
        fi
    done
done