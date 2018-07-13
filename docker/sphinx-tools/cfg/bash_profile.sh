# ~/.profile: executed by Bourne-compatible login shells.

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n

# Simple PS1 to make more visible that process is running in Docker
PS1="\n== [Docker] [\u@\h:\W] ==\n\$ "
