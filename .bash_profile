#!/bin/bash

# Load .bashrc, which loads: ~/.{bash_prompt,aliases,functions,path,dockerfunc,extra,exports}
if [[ -r "${HOME}/.bashrc" ]]; then
	# shellcheck source=/dev/null
	source "${HOME}/.bashrc"
fi

if [[ -r "/opt/homebrew/bin/brew" ]]; then
	# shellcheck source=/dev/null
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi


