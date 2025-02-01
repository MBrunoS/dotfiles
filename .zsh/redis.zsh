if ! if_exists redis; then
    echo "Installing redis..."
    $BREW_PREFIX/bin/brew install redis
fi
