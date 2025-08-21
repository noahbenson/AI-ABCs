#! /bin/bash
# BASH Script to automatically build the lesson website in this repository.

# We want to treat this script as a program:
set -euo pipefail

# What directory is the script in? (That's the repository root.)
REPO_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

# Go to that directory...
cd "$REPO_DIR"

# From here out, we can print commands to the screen.
set -x

# Go ahead and run the jupyter book command:
jupyter-book build --path-output ./site lessons/

# If we reach this point, all is well.
exit 0
