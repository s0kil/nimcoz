import ../src/nimcoz

proc a(): void {.thread.} =
  cozBegin("aThread")
  for index in countup(0, (200_000_0000 * 2)):
    if (index mod 100) == 0:
      cozNamedProgress("Mod100")
  cozEnd("aThread")

proc b(): void {.thread.} =
  cozBegin("bThread")
  for index in countup(0, (200_000_0000 * 2)):
    if (index mod 200) == 0:
      cozNamedProgress("Mod200")
  cozEnd("bThread")

proc main() =
  cozScope("Main")

  var threadA: Thread[void]
  var threadB: Thread[void]

  createThread[void](threadA, a)
  createThread[void](threadB, b)

  joinThread(threadA)
  joinThread(threadB)


when isMainModule: main()
