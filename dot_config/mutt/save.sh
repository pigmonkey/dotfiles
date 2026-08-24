#!/usr/bin/env bash
# Save piped email to a file.
# https://unix.stackexchange.com/a/310990

# Don't overwrite existing file
set -o noclobber

message=$(cat)

# Get the first line of the subject, and change / to ∕ so it's not a subdirectory
subject=$(<<<"$message" grep -oPm 1 '^Subject: ?\K.*' | sed 's,/,∕,g')

if [[ $subject == '' ]]; then
    echo Warning: no subject found
    subject="$(mktemp -u mutt_XXXXXXXX)"
fi

echo "${message}" > "$HOME/$subject.eml" && echo Email saved to "$HOME/$subject.eml"
