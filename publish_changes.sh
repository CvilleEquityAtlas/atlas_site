#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# Build the project.
hugo # if using a theme, replace with `hugo -t <YOURTHEME>`

# Upload to website code (atlas_site)
git add .               # add changes to git
msg="update web site `date`"
if [ $# -eq 1 ]
   then msg="$1"
fi
git commit -m "$msg"    # commit changes
git push origin master  # push changes

# Upload changes to public folder (cvilleequityatlas.github.io)
cd public
git add .               # add changes to git
git commit -m "$msg"    # commit changes
git push origin master  # push changes

# Return to project root
cd ..
