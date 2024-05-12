if (which pre-commit | is-empty) {
    echo "use flake" | save --force .envrc
    direnv allow
    pre-commit install --hook-type commit-msg
}

# Run pre-commit hook by name, all hooks, or update all hooks
def check [
    ...hooks: string  # The hook to run
    --list # List all hook ids
    --update # Update all pre-commit hooks
] {
    if $list {
        print (
            grep '\- id:' .pre-commit-config.yaml
            | str replace --all "- id:" ""
            | lines
            | str trim
            | sort
            | str join "\n"
        )

        return
    }

    if $update {
        pre-commit autoupdate

        return
    }

    if ($hooks | is-empty) {
        pre-commit run --all-files
    } else {
        for hook in $hooks {
          pre-commit run $hook --all-files
        }
    }
}
