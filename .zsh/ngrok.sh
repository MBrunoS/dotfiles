if ! if_exists ngrok; then
  echo "Installing ngrok..."

  curl -sSL https://ngrok-agent.s3.amazonaws.com/ngrok.asc \
    | sudo tee /etc/apt/trusted.gpg.d/ngrok.asc >/dev/null \
    && echo "deb https://ngrok-agent.s3.amazonaws.com bookworm main" \
    | sudo tee /etc/apt/sources.list.d/ngrok.list \
    && sudo apt update \
    && sudo apt install ngrok

  echo "Remember to authenticate ngrok with your authtoken."
  echo "ngrok config add-authtoken <token>"
fi
