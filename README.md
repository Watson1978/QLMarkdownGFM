# QLMarkdownGFM

## Introduction

QLMarkdownGFM is macOS Quick Look plugin for Github Flavored Markdown. This renders a thumbnail or preview using [github/cmark](https://github.com/github/cmark).

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
$ brew install --cask QLMarkdownGFM
```

### By manual

Simply copy QLMarkdownGFM.qlgenerator to `~/Library/QuickLook` or `/Library/QuickLook`.

If the newly installed plugin is not picked up instantly, you can run `qlmanage -r` in Terminal to refresh.

To uninstall, drag QLMarkdownGFM into the trash.
