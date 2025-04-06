#!/bin/bash
tools=("git" "curl" "wget" "vim" "python3" "docker")

for tool in "${tools[@]}"; do
    if ! command -v $tool &> /dev/null; then
        echo "$tool is NOT installed"
    else
        echo "$tool is installed"
    fi
done

