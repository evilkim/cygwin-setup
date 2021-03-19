#!/bin/bash
# HELP - Setup universal symlinks to OneDrive for Cygwin, Git Bash, and Windows

set -euo pipefail

# TESTME: ${OneDrive} equates to ${OneDriveCommercial} or ${OneDriveConsumer}
rm -f 1Drive
cmd /c mklink /J 1Drive "${OneDrive}"

rm -f 1Desktop
cmd /c mklink /J 1Desktop "1Drive\\Desktop"

rm -f 1Documents
cmd /c mklink /J 1Desktop "1Drive\\Documents"

rm -f 1src
mkdir -p 1Drive/src
cmd /c mklink /J 1src "1Drive\\src"
