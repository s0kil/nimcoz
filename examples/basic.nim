import ../src/nimcoz

proc sampleRun() =
  cozScope("sampleRun")

  for index in countup(0, (100_00 * 100_00)):
    if (index mod 100) == 0:
      cozNamedProgress("foo100")
      # echo "100"
    elif (index mod 200) == 0:
      cozNamedProgress("foo200")
      # echo "200"

sampleRun()
