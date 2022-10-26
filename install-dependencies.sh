#!/usr/bin/env zsh

dependencies=(
    "lilypond"
    "just"
    "cargo"
    "checkexec"
    "watchexec"
)

install_dependency() {
    case ${1} in
        "brew")
            curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
            ;;
        "lilypond")
            brew install lilypond-unstable
            ;;
        "just")
            brew install just
            ;;
        "cargo")
            curl https://sh.rustup.rs -sSf | sh
            ;;
        "checkexec")
            cargo install checkexec
            ;;
        "watchexec")
            brew install watchexec
            ;;
        "Skim")
            mdfind -name "kMDItemFSName == '*.app'" | grep "Skim"
            ;;
    esac
}

check_dependency() {
    if command -v "${1}" &>/dev/null; then
        echo "\"${1}\" installed."
    else
        echo "Installing ${1}..."
        install_dependency "${1}"
    fi
}

for dependency in "${dependencies[@]}"; do
    check_dependency "${dependency}"
done

if mdfind -name "kMDItemFSName == '*.app'" | grep "Skim" &>/dev/null; then
    echo '"Skim" installed.'
else
    echo "Installing Skim..."
    install_dependency "Skim"
fi
