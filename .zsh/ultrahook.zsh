#/home/linuxbrew/.linuxbrew/lib/ruby/gems/3.4.0/bin
# If ruby is not installed, install it
if ! if_exists ruby; then
    echo "Installing ruby..."
    $BREW_PREFIX/bin/brew install ruby
fi

# Add ruby to the path
export PATH="$BREW_PREFIX/lib/ruby/gems/3.4.0/bin:$PATH"

# Install ultrahook
if ! command -v ultrahook &>/dev/null; then
    echo "Installing ultrahook..."
    gem install ultrahook
fi