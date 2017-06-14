# Raghav Subramaniam
# .bash_profile

# x
if [ -z "$DISPLAY" ] && [ -n "$XDG_VTNR" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

# bashrc
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
