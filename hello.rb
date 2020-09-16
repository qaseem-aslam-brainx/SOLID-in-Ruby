=begin
puts `ls -l`

var1 = 2
var2 = '5'

puts var1 + var2.to_i

a = 'Hello '
a << 'world.
new line...'
puts a

puts $0
puts $$

puts "Enter name: "
STDOUT.flush
#name = gets.chomp
#puts "The name is " + name

v = 12

puts v

puts Float::DIG
puts Float::MAX

rice_on_square = 1
64.times do |square|
  puts "On square #{square + 1} are #{rice_on_square} grain(s)"
  rice_on_square *= 2
end

puts self

def hello name
  'Hello '  + name
end

puts hello "Ali"


def mtb(arg1="arg1", arg2="agr2", arg3="arg3")
  "#{arg1}, #{arg2}, #{arg3}."
end

puts mtb

puts "100 * 5 = #{100 * 5}"


def foo(*my_string)
  my_string.inspect
end

puts foo("Hello", 1)

def downer(string)
  string.downcase
end
a = "HELLO"
downer(a)      # -> "hello"
puts a         # -> "HELLO"

def downer!(string)
  string.downcase!
end
a = "HELLO"
downer!(a)      # -> "hello"
puts a


#puts String.methods.sort
#puts String.instance_methods.sort
#puts String.instance_methods(false).sort


s1 = 'Jonathan'
s2 = 'Jonathan'
s3 = s1
if s1 == s2
  puts 'Both Strings have identical content'
else
  puts 'Both Strings do not have identical content'
end
if s1.eql?(s2)
  puts 'Both Strings have identical content'
else
  puts 'Both Strings do not have identical content'
end
if s1.equal?(s2)
  puts 'Two Strings are identical objects'
else
  puts 'Two Strings are not identical objects'
end
if s1.equal?(s3)
  puts 'Two Strings are identical objects'
else
  puts 'Two Strings are not identical objects'
end

count = 0
unless count == 1
  puts count
end

age = 13

res = (13...19).include?(age) ? "Teenager" : "Not a teenager"

puts (13...19).include?(age) ? "Teenager" : "Not a teenager"

total_enrolled = 10

def enroll(name)
  "Enrolled " + name
end

name = "Random"

puts enroll(name) if total_enrolled <= 100

year = 4
leap = case
       when year % 400 == 0 then true
       when year % 100 == 0 then false
       else year % 4   == 0
       end
puts leap

puts NIL.class # NilClass
puts nil.class # NilClass
puts nil.object_id # 4
puts NIL.object_id # 4

# FALSE is synonym for false
puts FALSE.class # FalseClass
puts false.class # FalseClass
puts false.object_id # 0
puts FALSE.object_id # 0

def greet
  puts "In greet method"
  yield
  yield
end
puts "rnd"
greet {puts "In block"}

def call_block
  yield("Hello", 3)
end
puts "rnf"
def rnd
  puts "rnd"
end
rnd

call_block { |str, num | puts str + ' ' + num.to_s}

def try
  if block_given?
    yield
  else
    puts "No block given"
  end
end

try{puts "hello"}
try do
  puts "Hello from do block"
end
=end
=begin
x = 10
5.times do |x|
  puts "x inside block: #{x}"
end

puts "x outside block: #{x}"
=end

=begin
x = 10
5.times do |y; x|
  x = y
  puts "x inside the block: #{x}"
end

puts "x outside the block: #{x}"

puts "\n"
puts '\n'

numbers = [6,2,5,9,4,1,54]

numbers.each do |num|
  print num.to_s + ' '
end
puts
#puts Symbol.all_symbols
puts "string".to_sym.class # Symbol
puts :symbol.to_s.class    # String
=end

class Dog
  def initialize(breed, name)
    # Instance variables
    @breed = breed
    @name = name
  end

  def bark
    puts 'Ruff! Ruff!'
  end

  def display
    puts "I am of #{@breed} breed and my name is #{@name}"
  end
end

d = Dog.new("Labrador", "Tommy")

if d.respond_to?("bark")
  puts "d can bark"
else
  puts "d cannot bark"
end
if d.respond_to?("talk")
  puts "d can talk"
else
  puts "d cannot talk"
end

d.bark
d.display

puts Dog.instance_methods(false)


def hello
  puts 'hello'
end
def hello(name)
  puts 'hello ' + name
end

hello