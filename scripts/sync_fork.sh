#!/bin/bash

# Define the main function
main() {
  # Check if the workflow file has been modified in the upstream repository
  git fetch upstream
  git diff --name-only HEAD upstream/main .github/workflows/main.yml | grep -q .github/workflows/main.yml
  if [[ $? -eq 0 ]]; then
    echo "The workflow file has been modified in the upstream repository."
    echo "Please manually sync your forked repository by following the instructions in the README file: https://github.com/Yidadaa/ChatGPT-Next-Web/blob/main/README_CN.md#%E6%89%93%E5%BC%80%E8%87%AA%E5%8A%A8%E6%9B%B4%E6%96%B0"
    exit 1
  fi

  # Display error message and instructions if workflow file has been modified
  echo "The workflow file has not been modified in the upstream repository."
  echo "You can proceed with the sync process by following the instructions in the README file."
}

# Call the main function
main
