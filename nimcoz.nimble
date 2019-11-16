# Package

version       = "0.1.0"
author        = "Daniel Sokil"
description   = "Nim Wrapper For Coz Profiler"
license       = "MIT"
srcDir        = "src"


task docs, "Building Docs":
  exec "nim doc src/nimcoz.nim"
  mvFile "nimcoz.html", "docs/index.html"

# Dependencies

requires "nim >= 1.0.0"