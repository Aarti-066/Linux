#!/bin/bash

echo "Creating log files for 5 servers..."

for i in 1 2 3 4 5
do
    touch server$i.log
    echo "Server $i started successfully" > server$i.log
    echo "Log file created for server$i"
done

echo "========================="
echo "All 5 server logs created!"
ls server*.log
