#!/bin/sh 

# Check if sourcery is installed
if ! command -v sourcery >/dev/null 2>&1; then
    echo "Sourcery not found. Installing..."
    
    if ! command -v brew >/dev/null 2>&1; then
        echo "Homebrew not found. Install homebrew manually (read https://brew.sh for details)"
        echo '  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
        exit 1
    fi
    
    # Install sourcery from the local Brewfile
    brew bundle --file=Brewfile
fi

echo "Build tests"
sourcery --sources Tests --templates .sourcery/LinuxMain.stencil --output .sourcery --force-parse generated
mv .sourcery/LinuxMain.generated.swift Tests/LinuxMain.swift
