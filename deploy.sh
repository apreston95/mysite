#!/bin/bash

echo -e "Deploying updates to github."

# First generate new pages
hugo -t academic

# Go into public
cd public

# Now commit those changes
git add -A && git commit -m "Update site"
git push origin master

# Return to base directory
cd ..

