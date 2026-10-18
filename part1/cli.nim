
# import std/os #for cli args
import std/strutils #for strutils
import std/rdstdin # for standard input
import std/random

randomize()
proc generate_secret_num(): int =
  return rand(0..10)

type GameState = object 
  secret_num: int
  guess_attempts: int

when isMainModule:
  var running = true
  let line: string = "enter your guess"

  var gamestate = GameState(secret_num: generate_secret_num(),guess_attempts: 0)
  while running:
    try:
        let response = line.readLineFromStdin()
        if response.toLower() == "q":
          running = false
        else:
          let parsed = response.parseInt()
          echo parsed, " ", gamestate.secret_num
          if parsed == gamestate.secret_num:
            echo "you won"
            running = not running
          else:
            gamestate.guess_attempts += 1
            if gamestate.guess_attempts >= 5:
              echo "oops"
              running = false
    except Exception as e:
      echo "enter valid number please"


