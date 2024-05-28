# View remote repository
export def main [
  --browser # Open the remote repository website in the browser
] {
  gh repo view (if $browser { "--web"} else { "" })
}
