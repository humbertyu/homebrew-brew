# Humbertyu Homebrew Tap

Shared Homebrew tap for apps by humbertyu. Each app has its own file under
`Formula/`; adding another app does not require another tap repository.

macOS 15+ on Apple Silicon or Intel. The current release is `0.9.0-beta.1`.
The formula installs a prebuilt Universal Binary; Rust is not required.

```sh
brew tap humbertyu/brew
brew install lazyterm
lazyterm --version
lazyterm
```

If Homebrew requires approval for a third-party formula, review
`Formula/lazyterm.rb`, then run:

```sh
brew trust --formula humbertyu/brew/lazyterm
brew install lazyterm
```

Upgrade with `brew update` followed by `brew upgrade lazyterm`.
Uninstall with `brew uninstall lazyterm`. Uninstalling preserves SSH
configuration, LazyTerm data and Keychain entries. Stop any independent Project
services intentionally before uninstalling; removing the binary does not stop them.

If a previous manual installation shadows Homebrew, inspect `type -a lazyterm`
and remove only the old executable. Do not remove configuration directories.

[Beta guide and Agent Skill installation](https://github.com/humbertyu/lazyterm/blob/v0.9-stable-core/docs/BETA-TESTING.md)

## Maintaining This Tap

Publish the matching binary release first. Copy the generated release asset
`lazyterm.rb` to `Formula/lazyterm.rb`, verify its version, URL and SHA-256,
and commit the update. Never point a formula at an unpublished release.
