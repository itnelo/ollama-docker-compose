#!/usr/bin/env sh
set -eu

# Delegate to the upstream image entrypoint (same as stock ENTRYPOINT ["/bin/ollama"]).
exec /bin/ollama "$@"
