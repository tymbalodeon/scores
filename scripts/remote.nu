# View remote repository
def remote [
  --browser # Open the remote repository website in the browser
] {
  gh repo view (if $browser { "--web"} else { "" })
}
