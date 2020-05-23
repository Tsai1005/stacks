#!/bin/sh

echo "**************************"
echo "--------[Nordic]----------"
echo "**************************"

echo "<eraseall>..."
nrfjprog --eraseall -f nrf52

echo "<program>...[$1]"
nrfjprog --program $1 -f nrf52

echo "<reset>..."
nrfjprog --reset -f nrf52

echo "**************************"
