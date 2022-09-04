#!/bin/bash

FILE="package.json"

REMOVE_DEV_DEPENDENCIES="devDependencies"

REMOVE_DEPENDENCIES="dependencies"

ARRAY_REMOVE=( $REMOVE_DEPENDENCIES $REMOVE_DEV_DEPENDENCIES )

for i in ${ARRAY_REMOVE[@]}; do
    sed -i '/\'"$i"'/,/}/ d; /^$/d' $FILE
done
