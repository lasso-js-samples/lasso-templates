#!/bin/bash

set -e

echo "Rendering the templates on the server..."
echo

# Run the program on the server
node main.js

echo
echo "Server-side output shown above"
echo

read -p "Press any key to continue... " -n1 -s

# Package up the program for the browser
lasso --main main.js --inject-into my-page.html --config lasso-config.json

echo
echo "Open 'my-page.html' to see the output of the templates rendered in the browser".
