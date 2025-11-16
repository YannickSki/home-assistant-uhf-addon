#!/usr/bin/with-contenv bash
# Shell script used by the Home Assistant Add-on to launch UHF Server
set -e

# Read config values from the addon environment (Supervisor mounts the options as /data/options.json if needed)
RECORDINGS_DIR="${RECORDINGS_DIR:-/share/uhf}"
HOST="${HOST:-0.0.0.0}"
PORT="${PORT:-8000}"

# Ensure recordings dir exists
mkdir -p "$RECORDINGS_DIR"
chown -R root:root "$RECORDINGS_DIR" || true

# Start UHF Server with the desired recordings dir
exec /usr/local/bin/uhf-server --host "$HOST" --port "$PORT" --recordings-dir "$RECORDINGS_DIR"
