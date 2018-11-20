#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

echo "Setting default applications using duti..."

find * -not -name "$(basename ${0})" -type f | while read fn; do
    while read ext; do
        echo "Setting default application for extension $ext to $fn..."
        duti -s $fn $ext all
    done < $fn
done

echo "Successfully set all default applications."
