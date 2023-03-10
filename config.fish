if status is-interactive
    # Commands to run in interactive sessions can go here
end

# === alias start ======================
# proxy
function setproxy
    export http_proxy=socks5h://10.10.10.222:10080
    export https_proxy=socks5h://10.10.10.222:10080
    export HTTP_PROXY=socks5h://10.10.10.222:10080
    export HTTPS_PROXY=socks5h://10.10.10.222:10080
    export ALL_PROXY=socks5h://10.10.10.222:10080
end
function unsetproxy
    set -e http_proxy
    set -e https_proxy
    set -e HTTP_PROXY
    set -e HTTPS_PROXY
    set -e ALL_PROXY
end
# === alias end ========================

# === env start ========================
# fix "xdg-open fork-bomb" export your preferred browser from here
export BROWSER=/usr/bin/firefox

# rust env
export PATH="$HOME/.cargo/bin:$PATH"
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"

# jetbrain ide env
export PATH="$HOME/.local/share/JetBrains/Toolbox/scripts:$PATH"
export PATH="$HOME/.local/share/JetBrains/Toolbox/bin:$PATH"

# linux brew env
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
# === env end ==========================
