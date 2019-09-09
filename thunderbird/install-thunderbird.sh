#!/bin/sh

THUNDERBIRD_DIR="$AFS_DIR/.confs/thunderbird"
THUNDERBIRD_PROFILE="$THUNDERBIRD_DIR/piq5izo7.default"
THUNDERBIRD_DEFAULT_PREFS="$THUNDERBIRD_DIR/prefs-def.js"
THUNDERBIRD_PREFS="$THUNDERBIRD_PROFILE/prefs.js"

# Check if our Thunderbird profile is already installed
# or if it was manually removed by the user
if [ -f "$THUNDERBIRD_PREFS" -o '!' -d "$THUNDERBIRD_PROFILE" ]; then
  exit 0
fi

cat "$THUNDERBIRD_DEFAULT_PREFS" | envsubst > "$THUNDERBIRD_PREFS"
