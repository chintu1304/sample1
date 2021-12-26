#!/bin/bash -x

declare -A Numbers
Numbers[A]=$(( RANDOM % 5 + 1 ))
Numbers[B]=$(( RANDOM % 5 + 1 ))
Numbers[C]=$(( RANDOM % 5 + 1 ))
Numbers[D]=$(( RANDOM % 5 + 1 ))
Numbers[E]=$(( RANDOM % 5 + 1 ))
Numbers[F]=$(( RANDOM % 5 + 1 ))
Numbers[G]=$(( RANDOM % 5 + 1 ))
Numbers[H]=$(( RANDOM % 5 + 1 ))
Numbers[I]=$(( RANDOM % 5 + 1 ))
Numbers[J]=$(( RANDOM % 5 + 1 ))

echo "Random Numbers "${Numbers[@]}
echo "Random Numbers "${!Numbers[@]}
echo "Random Numbers "${#Numbers[@]}

