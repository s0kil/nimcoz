from os import splitPath

const cozHeader = currentSourcePath().splitPath.head & "/coz.h"

# Tells Coz-Profiler to begin a profiled transaction
proc cozBegin*(name: cstring): void {.importc: "COZ_BEGIN",
                                      varargs, header: cozHeader.}

# Tells Coz-Profiler to end the profiled transaction
proc cozEnd*(name: cstring): void {.importc: "COZ_END",
                                    varargs, header: cozHeader.}

# Marks a named progress checkpoint in the span of a profiled transaction
proc cozNamedProgress*(name: cstring): void {.importc: "COZ_PROGRESS_NAMED",
                                              varargs, header: cozHeader.}

# Marks an anonymous progress checkpoint in the span of a profiled transaction.
# Coz will try to pick up the line numbers and filename in this case
proc cozProgress*(): void {.importc: "COZ_PROGRESS",
                            varargs, header: cozHeader.}

# If you have a lexical scope, you can also use
# scope to place begin and end markers for you
template cozScope*(name: cstring): void =
  cozBegin(name)
  defer: cozEnd(name)
