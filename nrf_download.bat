
@echo "**************************"
@echo "--------[Nordic]----------"
@echo "**************************"

set TARGET=-s 682603958
REM  set TARGET=-s 682798575
REM  set TARGET=

echo "<eraseall>..."
nrfjprog --eraseall -f nrf52 %TARGET%

echo "<program>...[%1]"
nrfjprog --program %1 -f nrf52 %TARGET%

echo "<reset>..."
nrfjprog --reset -f nrf52 %TARGET%

echo "**************************"

::pause
