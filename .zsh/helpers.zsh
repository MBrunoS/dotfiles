# OS detection
IS_MACOS=false
IS_LINUX=false

[[ "$OSTYPE" == darwin* ]] && IS_MACOS=true
[[ "$OSTYPE" == linux-gnu* ]] && IS_LINUX=true
