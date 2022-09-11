#!/usr/bin/env bash

if which brew &> /dev/null; then
    brew update
    brew upgrade
    brew install python3 portaudio ffmpeg libav
elif which apt &> /dev/null; then
    sudo apt update
    sudo apt upgrade
    sudo apt install python3 portaudio19-dev libportaudio2 ffmpeg libav-tools
elif which dnf &> /dev/null; then
    sudo dnf up
    sudo dnf in python3 portaudio ffmpeg
else
    echo "Your package manager is not currently supported."
    echo "Currently supported managers are: brew, apt, dnf."
    exit 1
fi
