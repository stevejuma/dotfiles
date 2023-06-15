#!/bin/bash

if [[ -r "/opt/homebrew/bin/brew" ]]; then
	# shellcheck source=/dev/null
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Load .bashrc, which loads: ~/.{bash_prompt,aliases,functions,path,dockerfunc,extra,exports}
if [[ -r "${HOME}/.bashrc" ]]; then
	# shellcheck source=/dev/null
	source "${HOME}/.bashrc"
fi

if [[ -r "/opt/homebrew/bin/brew" ]]; then
	# shellcheck source=/dev/null
	eval "$(/opt/homebrew/bin/brew shellenv)"
fi


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/usr/local/opt/ruby/bin:$PATH"
