if ! if_exists firebase; then
    echo "Installing firebase..."
    curl -sL https://firebase.tools | bash
fi
