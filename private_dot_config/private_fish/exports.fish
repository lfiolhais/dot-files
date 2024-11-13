# Instead of setting the PATH every time, set only once using
set -U fish_user_paths /opt/homebrew/opt/ruby/bin /opt/homebrew/opt/gnu-tar/libexec/gnubin /opt/homebrew/opt/openjdk@11/bin /opt/homebrew/sbin /opt/homebrew/bin /opt/homebrew/opt/coreutils/libexec/gnubin /Users/lipe/.cargo/bin /usr/local/bin /System/Cryptexes/App/usr/bin /usr/bin /bin /usr/sbin /sbin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin /var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin /Applications/Little Snitch.app/Contents/Components

set -gx LD_LIBRARY_PATH (rustc --print sysroot)"/lib" $LD_LIBRARY_PATH

# Make vim the default editor.
set -gx EDITOR nvim

# Make Python use UTF-8 encoding for output to stdin, stdout, and stderr.
set -gx PYTHONIOENCODING UTF-8

# Highlight section titles in manual pages.
set -gx LESS_TERMCAP_md $yellow

# Don’t clear the screen after quitting a manual page.
set -gx MANPAGER 'less -X'

# Rust
set -gx RUST_SRC_PATH (rustc --print sysroot)/lib/rustlib/src/rust/src/

# XDG Spec
set -gx XDG_DATA_HOME $HOME/.local/share
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx XDG_CACHE_HOME $HOME/.cache

# GTK Dark Theme
set -gx GTK2_RC_FILES "/usr/share/themes/Materia-dark/gtk-2.0/gtkrc"

# Disbale Homebrew Auto Update
set -gx HOMEBREW_NO_AUTO_UPDATE 1

# Enable iterm tmux integration
set -x ITERM_ENABLE_SHELL_INTEGRATION_WITH_TMUX YES
