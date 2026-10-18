func clamp_custom[T: SomeNumber](v: T, min_n: T, max_n: T): T =
  return min(max(min_n, v), max_n)

func gcd[T: SomeInteger](a, b: T): T =
  if a mod b == 0:
    return b
  return gcd(b, a mod b)

func is_prime[T: SomeInteger](n: T): bool = 
  if n < 2:
    return false
  if n==2:
    return true
  for i in countup(2, n-1):
    if n mod i == 0:
      return false
  return true

func divmodc[T: SomeInteger](a, b: T): (T, T) = 
  if a < b:
    return (0, 0)

  var
    q = 0
    r = 0
    n_cp = a

  while n_cp >= b:
    q += 1
    n_cp -= b
  r = n_cp

  return (q, r)


echo divmodc[int](13,5)
for i in countup(0,10):
   stdout.write($i & ' ' & ' ' & $is_prime(i))
echo clamp_custom(-10, -1, 5)
echo gcd(15, 25)