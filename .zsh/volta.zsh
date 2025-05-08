export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

if ! if_exists volta; then
  echo "Installing volta..."
  curl https://get.volta.sh | bash
fi
