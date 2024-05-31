#!/usr/bin/env nu

# View repository analytics
export def main [] {
  tokei --hidden --sort lines
}
