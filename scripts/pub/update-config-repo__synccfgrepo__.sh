#!/bin/sh

# Source and destination directories
DOT_FILE_DIR="$HOME/def/dotfiles"
CFG_REPO_DIR="$HOME/def/cfgrepo"
# Get user, host, and timestamp info for commit messages
USER_HOST="$(whoami)@$(hostname)"
TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S')"

# Navigate to the destination Git repo
cd "$CFG_REPO_DIR" || { echo "Destination directory not found!"; exit 1; }

# Pre-sync Git commit
git add .
git commit -m "$TIMESTAMP $USER_HOST PRESYNC" || echo "No changes to commit (pre-sync)."

# Rsync: Copy actual files (not symlinks)
rsync -avL --delete "$DOT_FILE_DIR/" "$CFG_REPO_DIR/dotfiles"

# Post-sync Git commit
git add .
git commit -m -v "$TIMESTAMP $USER_HOST POSTSYNC" || echo "No changes to commit (post-sync)."

# Done message
echo "Sync complete"

