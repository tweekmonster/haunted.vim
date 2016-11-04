# haunted.vim

This is an experimental plugin for scripted automation in Vim using ghosts
:ghost:

![a ghost](https://cloud.githubusercontent.com/assets/111942/20014037/bad3c4f0-a28b-11e6-8738-91b9c1a4f135.gif)


## Requirements

[Nvim][nvim] `0.1.5` or [Vim][vim] `7.4.1626` for the `has('timers')` feature.


## Installation

Follow your package manager's instructions.


## Usage

The `:Haunt` command runs a [haunt script][demo].  Without a file argument, it
will run the current buffer's content.  You can cancel the haunting with
<kbd>Shift</kbd>+<kbd>F12</kbd>.

## Format

Each non-blank line in a haunt script is fed into Vim as if you were typing
them.  Non-printable characters must use the `\<key>` notation as described in
`:h expr-quote`.  For example, newlines are ignored, so you must use `\<cr>`.

A line that starts with `## ` (it has a space after it) is a haunt directive.
A line that starts with `### ` is a comment.

### Haunt directives

| Name        | Description                                                                                                             |
|-------------|-------------------------------------------------------------------------------------------------------------------------|
| `pause`     | Pauses for a duration (in `ms`).  Without arguments, defaults to `1000`                                                 |
| `execute`   | Execute a command                                                                                                       |
| `key_delay` | Sets the amount of time between keystrokes (in `ms`). Two arguments will cause the delay to be random within the range. |
| `feed_full` | Feed in the next line as a whole instead of individual keystrokes. Useful for operator keys.                            |
| `show_keys` | Displays keystrokes on screen.  Argument is the time before clearing the buffer. `0` to disable and hide.               |

Example script: [support/demo/demo.hnt][demo]


## License

[MIT](LICENSE)


[nvim]: https://github.com/neovim/neovim
[vim]: https://github.com/vim/vim
[demo]: support/demo/demo.hnt
