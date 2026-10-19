#!/bin/sh
here="$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"
sys="$(uname -s)"
case "$sys" in
MINGW* | MSYS* | CYGWIN*) rel="x86_64-pc-windows-msvc/gray-truncate.exe" ;;
Darwin*)
    case "$(uname -m)" in
    arm64) rel="aarch64-apple-darwin/gray-truncate" ;;
    *) rel="x86_64-apple-darwin/gray-truncate" ;;
    esac ;;
*)
    case "$(uname -m)" in
    aarch64 | arm64) rel="aarch64-unknown-linux-musl/gray-truncate" ;;
    *) rel="x86_64-unknown-linux-musl/gray-truncate" ;;
    esac ;;
esac
if [ -x "$here/$rel" ]; then exec "$here/$rel" "$@"; fi
for cand in "$here/target/release/gray-truncate.exe" "$here/target/release/gray-truncate" "$here/target/debug/gray-truncate.exe" "$here/target/debug/gray-truncate"; do
    if [ -x "$cand" ]; then exec "$cand" "$@"; fi
done
echo "gray-truncate binary not found in $here" >&2
exit 1
