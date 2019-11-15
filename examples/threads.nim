import ../src/nimcoz

proc a(): void {.thread.} =
  cozBegin("A")
  for x in countup(0, 2000000000): discard
  cozEnd("A")

proc b(): void {.thread.} =
  cozBegin("B")
  for x in countup(0, 1900000000): discard
  cozEnd("B")

proc main() =
  cozBegin("Main")
  defer: cozEnd("Main")

  var threadA: Thread[void]
  var threadB: Thread[void]

  createThread[void](threadA, a)
  createThread[void](threadB, b)

  joinThread(threadA)
  joinThread(threadB)


when isMainModule: main()
