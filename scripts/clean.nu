  do --ignore-errors {
      ls **/*.pdf | each {|file| rm $file.name} out> /dev/null
  }
