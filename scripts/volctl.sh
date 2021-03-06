#!/bin/bash

# This cute little script sets *ALL* of the volume sinks/sources to the same volume!
#
# To increase volume by $VOL, run: volctl +[ADJUSTMENT]
# To decrease volume by $VOL, run: volctl -[ADJUSTMENT]
#   Omit the adjustment value to use the default, $VOL.
# To set the volume to a specific percentage, run: volctl <VOLUME>%
#   You may optionally leave out the percentage sign.
# This script defaults to setting sinks, but it may set sources if the second
#   argument is "source".

# Default to sink, but set source if specified
S="sink"
if [[ -n "$2" ]]; then
    S="$2"
fi

# Default volume adjustment
VOL="5%"

# Grab sink indices
SS=$(pacmd list-"$S"s | awk -F': ' '/index/ {print $2}')

# Parse input
if [[ "$1" == "+" || "$1" == "-" ]]; then # Adjust volume
    if [[ -z "${1:(2)}" ]]; then # Use default adjustment
        CMD="$1""$VOL"
    else # Custom adjustment specified
        # Be forgiving about the percent sign
        if [[ "${1:(-1)}" == "%" ]]; then
            CMD="$1"
        else
            CMD="$1""%"
        fi
    fi
else # Set specific volume
    # Be forgiving about the percent sign
    if [[ "${1:(-1)}" == "%" ]]; then
        CMD="$1"
    else
        CMD="$1""%"
    fi
fi

# Iterate through sinks/sources and modify volume
for i in $SS; do
    pactl set-"$S"-volume $i "$CMD";
done

exit 0;