#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Kill any virtualenvs present
rm -rf $DIR/bin/ $DIR/share/ $DIR/lib/ $DIR/include/

virtualenv -p python3 $DIR
$DIR/bin/pip install wheel
$DIR/bin/pip wheel --wheel-dir $DIR/wheelhouse -r $DIR/requirements.txt
