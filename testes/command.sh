echo "$1. início: $(date +"%I:%M:%S")" >> execution.log
./command1.sh
./command2.sh
./command3.sh
echo "$1. final: $(date +"%I:%M:%S")" >> execution.log