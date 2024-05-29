#!/bin/bash

# Repeat the following steps 1 - 4 for all subdirectories you need.

# Step 1: Set Variables
ORIGINAL_REPO_URL="https://github.com/ublue-os/bazzite.git"
ORIGINAL_TEMP_DIR="bazzite"
ORIGINAL_SUBDIR="spec_files/waydroid"

YOUR_REPO_URL="https://github.com/PussInScreen/MyAurora.git"
YOUR_TEMP_DIR="MyAurora"
YOUR_SUBDIR="spec_files/waydroid"

# Step 2: Clone the original repository
git clone $ORIGINAL_REPO_URL $ORIGINAL_TEMP_DIR

# Step 3: Sync the subdirectory
rsync -av --progress $ORIGINAL_TEMP_DIR/$ORIGINAL_SUBDIR/ $YOUR_TEMP_DIR/$YOUR_SUBDIR/ --exclude .git

# Step 4: Navigate to your repository and commit changes
cd $YOUR_TEMP_DIR
git add $YOUR_SUBDIR

# Commiting all the subdirectories
git config --global user.email "19553807+PussInScreen@users.noreply.github.com"
git config --global user.name "Puss in Screen"
git commit -m "Updated subdirectories from other projects"
git push
