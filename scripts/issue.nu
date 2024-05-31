#!/usr/bin/env nu

# View issues
export def main [
  issue_number?: number # The number of the issue to view
  --web # Open the remote repository website in the browser
] {
  if ($issue_number | is-empty) {
    if $web {
      gh issue list --web
    } else {
      gh issue list
    }
  } else {
    if $web {
      gh issue view $issue_number --web
    } else {
      gh issue view $issue_number
    }
  }
}
