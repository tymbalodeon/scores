# View issues
export def main [
  issue_number?: number # The number of the issue to view
  --browser # Open the remote repository website in the browser
] {
  if ($issue_number | is-empty) {
    if $browser {
      gh issue list --web
    } else {
      gh issue list
    }
  } else {
    if $browser {
      gh issue view $issue_number --web
    } else {
      gh issue view $issue_number
    }
  }
}
