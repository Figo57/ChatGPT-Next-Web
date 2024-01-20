#!/bin/bash

# Import necessary functions and variables from setup.sh

# Define the sync_fork function
sync_fork() {
  # Check if the current branch is the target branch
  if [[ "$(git symbolic-ref --short HEAD)" != "main" ]]; then
    git checkout main
  fi

  # Set the upstream repository URL
  upstream_repo="https://github.com/Yidadaa/ChatGPT-Next-Web.git"

    # Fetch the latest changes from the upstream repository
  git remote add upstream https://github.com/Yidadaa/ChatGPT-Next-Web.git
  git fetch upstream

  # Check if there are any new commits from the upstream repository
  if [[ "$(git rev-parse HEAD)" != "$(git rev-parse upstream/main)" ]]; then
    # Pull the changes from the upstream repository and merge them into the current branch
    git pull upstream main

    # Check for merge conflicts
    if [[ -n "$(git ls-files --unmerged)" ]]; then
      echo "Merge conflicts occurred. Please resolve the conflicts and try again."
      exit 1
    fi

    # Push the changes to the forked repository
    git push origin main
    echo "Forked repository synced with the upstream repository."

    echo "Forked repository synced with the upstream repository."
  else
    echo "No new commits from the upstream repository."
  fi
}

# Call the sync_fork function
sync_fork
