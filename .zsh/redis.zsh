if ! if_exists redis-cli; then
    echo "Installing redis..."
    $BREW_PREFIX/bin/brew install redis
fi
