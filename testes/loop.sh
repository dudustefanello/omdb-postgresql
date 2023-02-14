echo "" > execution.log
rm */*.log

for i in $(seq 1 10)
    do ./command.sh $i
done