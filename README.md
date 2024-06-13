# QLMarkdownGFM

## Introduction

QLMarkdownGFM is macOS Quick Look plugin for Github Flavored Markdown. This renders a thumbnail or preview using [github/cmark](https://github.com/github/cmark).

> [!IMPORTANT]  
> This plugin does not work since macOS 15, because it deprecates Quick Look Generator plugins.
> https://developer.apple.com/documentation/macos-release-notes/macos-15-release-notes#Quick-Look

Here is QLMarkdownGFM screenshots.

Thumbnail | Preview
-- | --
<img src="https://raw.githubusercontent.com/Watson1978/QLMarkdownGFM/master/images/thumbnail.png" /> | <img src="https://raw.githubusercontent.com/Watson1978/QLMarkdownGFM/master/images/preview.png" />

## Installation

If you have been used other QuickLook plugin, please remove it before (See https://github.com/Watson1978/QLMarkdownGFM/issues/3).

### By homebrew-cask

If you use [homebrew-cask](https://github.com/Homebrew/homebrew-cask), you can install this by following command.

```
$ brew tap Watson1978/formula
$ brew install --cask watson1978/formula/qlmarkdowngfm
```

To uninstall,

```
$ brew uninstall --cask watson1978/formula/qlmarkdowngfm
$ brew untap Watson1978/formula
```

### By manual

Simply copy QLMarkdownGFM.qlgenerator to `~/Library/QuickLook` or `/Library/QuickLook`.

If the newly installed plugin is not picked up instantly, you can run `qlmanage -r` in Terminal to refresh.

To uninstall, drag QLMarkdownGFM into the trash.
