# Keep only the first occurrence of each PATH entry
typeset -U path PATH
# Golang
if [ -x /usr/lib/go-1.24/bin/go ]; then
    export PATH=$PATH:/usr/lib/go-1.24/bin
    export PATH=$PATH:$HOME/go/bin
fi
