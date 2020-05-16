#!/bin/sh
#
# ufetch-void - tiny system info for void

## INFO

# user is already defined
host="$(hostname)"
os='void'
libc=' musl'
kernel="$(uname -sr)"
packages="    $(xbps-query -l | wc -l)"
shell="$(basename "$SHELL")"
wm='    sway'

## UI DETECTION

if [ -n "${DE}" ]; then
	ui="${DE}"
	uitype='DE'
elif [ -n "${WM}" ]; then
	ui="${WM}"
	uitype='WM'
elif [ -n "${XDG_CURRENT_DESKTOP}" ]; then
	ui="${XDG_CURRENT_DESKTOP}"
	uitype='DE'
elif [ -n "${DESKTOP_SESSION}" ]; then
	ui="${DESKTOP_SESSION}"
	uitype='DE'
elif [ -f "${HOME}/.xinitrc" ]; then
	ui="$(tail -n 1 "${HOME}/.xinitrc" | cut -d ' ' -f 2)"
	uitype='WM'
elif [ -f "${HOME}/.xsession" ]; then
	ui="$(tail -n 1 "${HOME}/.xsession" | cut -d ' ' -f 2)"
	uitype='WM'
else
	ui='unknown'
	uitype='UI'
fi

## DEFINE COLORS

# probably don't change these
if [ -x "$(command -v tput)" ]; then
	bold="$(tput bold)"
	black="$(tput setaf 0)"
	red="$(tput setaf 1)"
	green="$(tput setaf 2)"
	yellow="$(tput setaf 3)"
	blue="$(tput setaf 4)"
	magenta="$(tput setaf 5)"
	cyan="$(tput setaf 6)"
	white="$(tput setaf 7)"
	reset="$(tput sgr0)"
fi

# you can change these
lc="${reset}${bold}${green}"        # labels
nc="${reset}${bold}${green}"        # user and hostname
ic="${reset}"                       # info
c0="${reset}${bold}${green}"        # first color
c1="${reset}${green}"               # second color

## OUTPUT

cat <<EOF

${c0}      _______      ${nc}${USER}${ic}@${nc}${host}${reset}
${c1}      ${c0}\_____ \`-    ${lc}os:        ${ic}${os}${reset}
${c1}   /\   ${c0}___ \`- \   ${lc}kernel:    ${ic}${kernel}${reset}
${c1}  | |  ${c0}/   \  | |  ${lc}wm:    ${ic}${wm}${reset}
${c1}  | |  ${c0}\___/  | |  ${lc}pkgs:  ${ic}${packages}${reset}
${c1}   \ \`-_____  ${c0}\/   ${lc}shell:     ${ic}${shell}${reset}
${c1}    \`-______\ ${c0}   ${c1}  libc:     ${ic}${libc}${reset}

EOF
