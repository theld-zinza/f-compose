#!/bin/bash

# Exit on fail
set -e

# Bundle install
npm install

# Start services
if [ ${ENVIROMENT} = "PROD" ]; then
    npm start
else
    npm start
fi

# Finally call command issued to the docker service
exec "$@"
