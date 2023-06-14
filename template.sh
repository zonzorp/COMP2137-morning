#!/bin/bash

myvar=3
myvar2=hello
myvar3= boo

cat <<EOF

myvar: $myvar
myvar2: $myvar2
myvar3: $myvar3

EOF
