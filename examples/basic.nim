import ../src/nimcoz

proc sampleRun() =
  cozScope("sampleRun")

  for index in countup(0, (100_000 * 100_000)):
    if (index mod 100) == 0:
      cozNamedProgress("foo100")
    elif (index mod 200) == 0:
      cozNamedProgress("foo200")

sampleRun()
