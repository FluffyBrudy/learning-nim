import modules/arth

type GameState = enum one, two, three, four

type Persion = object
    name: string
    age: int

type PersionRef = ref Persion

const sam = Persion(name: "same", age: 200)
echo sam

proc mutateobj(obj: var PersionRef) =
  obj = PersionRef(name: "mutated", age: 10)
  # obj.name = "heheh"

var sam1 = PersionRef(name: "ref", age:201)
mutateobj(sam1)
echo sam1.name

type Person = object
  name: string

echo cadd(1, 2)
proc mutate(p:  var Person) = # omit var and suffer
  p.name = "new"
  p = Person(name: "replaced")  

var p = Person(name: "old")
mutate(p)
echo p