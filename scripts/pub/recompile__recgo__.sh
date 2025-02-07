#!bin/sh

# delete a.out if exists
echo "rm a.out"
wait
rm a.out
wait
# compile everything in this dir
echo "gcc *"
wait
gcc *
wait
echo "./a.out"
wait
./a.out

