if ! if_exists fnm; then
    echo "Installing fnm..."
    sudo apt install zip unzip
    curl -fsSL https://fnm.vercel.app/install | bash
fi
