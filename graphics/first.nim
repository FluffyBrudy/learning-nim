import nim2d

let n2d = newNim2d("hello", 100, 100, 640, 480)

n2d.draw = proc(nim2d: Nim2d) =
  nim2d.setColor(255, 120, 60)
  nim2d.circle(320, 240, 80, true)

n2d.play()
