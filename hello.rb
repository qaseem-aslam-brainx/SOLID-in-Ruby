def g *args
  args
end

def f arg
  arg
end

x,y,z = [true, 'two', true]

if a = f(x) and b = f(y) and c = f(z) then
  d = g(a,b,c)
end

puts d