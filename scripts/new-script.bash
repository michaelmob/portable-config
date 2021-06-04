#!/usr/bin/env bash
#
# Usage: ./my-script arg1 [arg2]
#
source ~/.scripts/utilities.bash
takes_at_least_n_args 1 && exit 1
#success_msg 'Script executed' && exit 0

new_file="~/.scripts/${1%.*}.bash"
file_exists $new_file && error_msg "file '$new_file' already exists" && exit 1
sed '/exit 0/q' "$0" | "${EDITOR:-vi}" - +"file $new_file" && chmod u+x "$new_file"
