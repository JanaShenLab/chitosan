#!/bin/bash

COMMAND="parm ../../parm7 \n"
COMMAND="$COMMAND trajin ../../ncfile\n"

i=1

until [ $i == 241 ]; 
do
j=$(($i+9))
COMMAND="$COMMAND distance ${i}_${j}_dist :${i}@O1 :${j}@O4 out ete_fib.dat noimage \n"
i=$(($i+10))
done

COMMAND="$COMMAND go"
echo -e "$COMMAND" | cpptraj

