# View available templates
def templates [] {
  fd --extension ly "" templates 
  | lines
  | each {
      |file| 
      
      $file 
      | path basename 
      | str replace ".ly" ""
  } 
  | str join "\n"
}
