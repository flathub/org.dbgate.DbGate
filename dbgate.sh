#!/bin/sh

set -oue pipefail

export FLATPAK_ID="${FLATPAK_ID:-org.dbgate.DbGate}"
export TMPDIR="${XDG_RUNTIME_DIR}/app/${FLATPAK_ID}"
export ELECTRON_OZONE_PLATFORM_HINT=auto

exec zypak-wrapper /app/dbgate/dbgate $@
