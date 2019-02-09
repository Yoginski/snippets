export PATH=$PATH:$HOME/.cargo/bin
export PATH=$PATH:$HOME/.local/bin

alias bitcoin-cli="bitcoin-cli -conf=/etc/bitcoin/bitcoin.conf"

alias eps-start="systemctl start --user electrum-personal-server"
alias eps-stop="systemctl stop --user electrum-personal-server"
alias eps-restart="systemctl restart --user electrum-personal-server"
alias eps-status="systemctl status --user electrum-personal-server"
alias eps-logs="journalctl --user --unit electrum-personal-server --no-pager"

ranger() {
    if [ -z "$RANGER_LEVEL" ]; then
        /usr/bin/ranger "$@"
    else
        exit
    fi
}
