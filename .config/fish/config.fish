export PATH="$HOME/neovim/bin:$PATH"
fish_add_path ~/Downloads/downloads/Apidog.AppImage
fish_add_path ~/.cargo/bin/eza
export BUN_INSTALL="$HOME/.bun"
export PATH="/usr/bin/pgsql:$PATH"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/share/nvim/mason/bin/:$PATH"
export PATH="$HOME/.cargo/bin/rustc:$PATH"
source ~/.asdf/asdf.fish
bind \cf "tmux-sessionizer"

function fish_greeting
    echo Hello (set_color green;)Bliss!(set_color normal;)
    echo The time is (set_color yellow;date +%T;)(set_color normal;). Remember to do your best!
end

# A copy of fish's internal cd function. This makes it possible to use
# `alias cd=z` without causing an infinite loop.
if ! builtin functions --query __zoxide_cd_internal
    if builtin functions --query cd
        builtin functions --copy cd __zoxide_cd_internal
    else
        alias __zoxide_cd_internal='builtin cd'
    end
end

alias cd=z

function __zoxide_z_complete
    set -l tokens (commandline --current-process --tokenize)
    set -l curr_tokens (commandline --cut-at-cursor --current-process --tokenize)

    if test (count $tokens) -le 2 -a (count $curr_tokens) -eq 1
        # If there are < 2 arguments, use `cd` completions.
        complete --do-complete "'' "(commandline --cut-at-cursor --current-token) | string match --regex '.*/$'
    else if test (count $tokens) -eq (count $curr_tokens); and ! string match --quiet --regex $__zoxide_z_prefix_regex. $tokens[-1]
        # If the last argument is empty and the one before doesn't start with
        # $__zoxide_z_prefix, use interactive selection.
        set -l query $tokens[2..-1]
        set -l result (zoxide query --exclude (__zoxide_pwd) --interactive -- $query)
        and echo $__zoxide_z_prefix$result
        commandline --function repaint
    end
end

zoxide init fish | source
