#[
  Array
]#
#range expression
var rexp = [0..5]
echo type(rexp), $len(rexp)

for i in rexp[0]:
  echo i

# fixed array and sequence
var static_arr: array[6, int]

static_arr = [0, 1, 2, 3, 4, 5]
var dynamic_arr = @static_arr
echo $dynamic_arr, " ", $dynamic_arr.len()
dynamic_arr.add(10)
echo dynamic_arr


# array fwith length 6, from index 0 to 5
type IntArray = array[0..5, int]
var x: IntArray
x = [1, 2,3, 4, 5, 6]
echo $low(x), ",", $high(x)

proc print_len(arr: openArray[string]): int =
  len(arr)

let arr = ["apple", "ball", "cat"]
var sequence: seq[string] = @[]
sequence.add("dynamic")
sequence.add("meow")
echo print_len(arr)
echo print_len(sequence)
#[
  end of Array
]#

#[
  varandian args
]#
proc varandianArgs(f: File, a:varargs[string]):void =
  for item in a:
    f.write(item & " ")
  echo ""

varandianArgs(stdout, "apple", "ball", "cat", "dog")
#[
 end of varandian-args
]#

#[
  handful of slices just minimal
]#
var 
  a = "Meow huha-haha"
  b = "slices are useful."
echo a[5..^1]
b[11..^4] = "meow"
echo b
#[
  end of slices
]#
