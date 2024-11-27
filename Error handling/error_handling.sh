#!/bin/bash

create_directory() {
	mkdir demo
}

if ! create_directory; then    # if create directory not happen then do this
	echo "The code is being exited as the directory already exists"
	exit 1  # further no command will be executed
fi

echo "this should not work beacuse the code is interrupted"
