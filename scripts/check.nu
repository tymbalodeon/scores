#!/usr/bin/env nu

# Run pre-commit hooks
export def main [
    ...hooks: string # The hooks to run
    --list # List hook ids
    --update # Update all pre-commit hooks
] {
    if $list {
        print (
            rg '\- id:' .pre-commit-config.yaml
            | str replace --all "- id:" ""
            | lines
            | str trim
            | sort
            | to text
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
