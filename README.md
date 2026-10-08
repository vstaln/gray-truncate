<p align="center">
  <img src="assets/gray-logo.svg" alt="gray" width="96">
</p>
<h1 align="center">gray-truncate</h1>
<p align="center">Caps oversized tool results with head/tail middle-out truncation.</p>
<p align="center">
  <a href="https://github.com/vstaln/gray-truncate/blob/main/LICENSE"><img alt="MIT License" src="https://img.shields.io/badge/license-MIT-blue.svg"></a>
  <img alt="gray plugin" src="https://img.shields.io/badge/gray-plugin-7aa2f7.svg">
  <img alt="rust" src="https://img.shields.io/badge/built%20with-rust-orange.svg">
</p>

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

---
Part of the [gray](https://github.com/vstaln/gray) plugin ecosystem —
the open-source AI agent harness. <https://gray.alignment.id>
