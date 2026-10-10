<div align="center">
  <img alt="gray-truncate" src="assets/icon.svg" width="120" height="120" />
  <h1>gray-truncate</h1>
  <p><strong>Cap oversized tool results, keeping the head and tail of long output.</strong></p>
  <p>
    <a href="https://gray.alignment.id">Website</a> ·
    <a href="https://gray.alignment.id/plugins/gray-truncate">Store</a> ·
    <a href="https://github.com/vstaln/gray-truncate">Source</a> ·
    <a href="https://github.com/vstaln/gray">gray</a>
  </p>
  <p>
    <a href="LICENSE"><img alt="License: MIT" src="https://img.shields.io/badge/license-MIT-1c1c20?style=flat-square&labelColor=0a0a0b" /></a>
    <a href="https://www.rust-lang.org"><img alt="Built with Rust" src="https://img.shields.io/badge/built%20with-rust-1c1c20?style=flat-square&labelColor=0a0a0b&logo=rust&logoColor=d4a373" /></a>
    <a href="https://gray.alignment.id/plugins/gray-truncate"><img alt="gray plugin" src="https://img.shields.io/badge/gray-plugin-1c1c20?style=flat-square&labelColor=0a0a0b&color=7aa2f7" /></a>
  </p>
</div>

<br/>

```bash
gray plugin install gray-truncate
```

Caps oversized tool results before they reach the model: long output keeps its
head and tail, the middle is replaced by a truncation marker. `/truncate`
reports state.

## Wire methods

`plugin/manifest`, `tool/after`, `command/run` (`/truncate`), `plugin/shutdown`.
No capabilities required.

## Install

```sh
gray plugin install truncate
```

## Develop

```sh
cargo test
gray account check      # entry point + manifest handshake
gray account publish    # check → build → release → publish to the gray registry
```

Bump `version` in `Cargo.toml` before each `publish`; the registry refuses to
republish a version.

## Tags

`gray` `plugin` `truncate` `rust`

---
Part of the [gray](https://github.com/vstaln/gray) plugin ecosystem —
the open-source AI agent harness. <https://gray.alignment.id>
