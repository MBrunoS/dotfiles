if ! if_exists opencode; then
    echo "Installing opencode..."
    brew install anomalyco/tap/opencode
fi

# Wrapper to run OpenCode with oh-my-opencode only when requested.
# Default behavior:
# - `opencode` => vanilla OpenCode (no oh-my-opencode)
# - `opencode --omo`      => OpenCode + oh-my-opencode (runtime-only override)
#
# Requirement:
# - `~/.config/opencode/opencode.json` should NOT already contain oh-my-opencode.

opencode() {
  if [[ "$*" == *"--omo"* ]]; then
    jq '.plugin = ["oh-my-openagent@latest"]' ~/.config/opencode/opencode.json > /tmp/oc.json && mv /tmp/oc.json ~/.config/opencode/opencode.json
    command opencode "${@/--omo/}"
    jq '.plugin = []' ~/.config/opencode/opencode.json > /tmp/oc.json && mv /tmp/oc.json ~/.config/opencode/opencode.json
  else
    command opencode "$@"
  fi
}