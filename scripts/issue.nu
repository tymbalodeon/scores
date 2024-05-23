# View issues
def issue [issue_number?: number, --browser] {
  let web = if $browser {
    "--web"
  } else {
    ""
  }

  if ($issue_number | is-empty) {
      gh issue list $web
  } else {
    gh issue view $issue_number $web
  }
}
