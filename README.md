# open.yazi

Open a file or directory using a third-party editor.

## Installation

```sh
ya pack -a
```

## Usage

Add this to your `~/.config/yazi/keymap.toml`:

```toml
[[manager.prepend_keymap]]
on   = [ "o", "z" ]
run  = "plugin open --args=zed"
desc = "use zed open file or directory"
```
