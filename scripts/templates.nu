#!/usr/bin/env nu

# View available templates
export def main [
  --files: string # View files for specified template name
  --src: string # View source code for specified template file stem
] {
  if not ($files | is-empty) {
    return (
      fd $files templates
      | lines
    )
  }

  if not ($src | is-empty) {
    return (open (fd $"^($src).\(i\)?ly$" templates))
  }

  fd --extension ly "" templates
  | lines
  | each {
      |file|

      let template = (
        $file
        | path basename
        | str replace ".ly" ""
      )

      $template
      | wrap name
      | merge (
          {
            form: "Form chart with separate sections and form summary at the bottom",
            lead: "Lead sheet showing melody and chords",
            piano: "Piano staff score",
            single: "Score for a single staff instrument",
          } | get $template
        | wrap description
      )
  } | table --index false
}
