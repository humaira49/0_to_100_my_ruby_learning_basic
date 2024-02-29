puts "Hello, world!"
#three type of datatypes
my_num = 25 
my_boolean = true   
my_string = "Ruby"
puts my_num
#difference between print and puts
print my_boolean
#for multi line comment
=begin
puts my_string
puts "Humaira Mehraban".length       #length
puts "Humaira Mehraban".reverse      #reverse
puts "Humaira Mehraban".upcase       #uppercase
puts "Humaira Mehraban".downcase     #lowercase
=end
sum = 13+379
product = 923*15
quotient  = 13209/17
print sum, product, quotient

print "whats your first name?"
first_name = gets.chomp
puts "First_Name: #{first_name}"  


print "whats your first name?"          #user input ------------------------------------
first_name = gets.chomp
print "whats your last name?"
last_name = gets.chomp
print "whats your city name?"
city = gets.chomp
print "whats your province name?"
state = gets.chomp
puts "First_Name: #{first_name}"
puts "last_Name: #{last_name}"
puts "city_Name: #{city}"
puts "province_Name: #{state}"

print "This is my question?"
answer = gets.chomp
answer2 = answer.capitalize 
answer.capitalize!
puts answer
print "whats your first name?"          
first_name = gets.chomp
first_name.capitalize!
print "whats your last name?"
last_name = gets.chomp
last_name.capitalize!
print "whats your city name?"
city = gets.chomp
city.capitalize!                                                    #----capitalize
print "whats your province name?"
state = gets.chomp
state.upcase!
puts "First_Name: #{first_name}"
puts "last_Name: #{last_name}"
puts "city_Name: #{city}"
puts "province_Name: #{state}"

print "whats your first name?"
first_name = gets
puts "First_Name: #{first_name}"

puts "Integer please: "                               #if statement----------------
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

# test_1 should be false _______________________________________________operators
test_1 = (5<4) && (6==6)

# test_2 = should be false
test_2 = (3 != 4) && (1 > 2)

# test_3 = should be true
test_3 = (2**3==8) && (8==8)
#____________________________________________________________replacing string____________
print "type a string "
user_input = gets.chomp
user_input.downcase!
if user_input.include? "s"
user_input.gsub!(/s/, "th")
puts "your string: #{user_input}"
else
puts "wrong"
end
#____________________________________________________________while loop__________________
counter = 1
while counter < 11
  puts counter
  counter += 1
end
#________________________________________________________________for loop__________________
for num in 1..15
    puts num
  end
  #_______________________________________loop method______________________________
  i = 20
loop do
  i -= 1
  puts "#{i}"
  break if i <= 0
end
#next_________
i = 20
loop do
  i -= 1
  next if i % 2 == 1
  print "#{i}"
  break if i <= 0
end
#string print
num = 0
loop do
  print "Ruby!"
  num += 1
  break if num == 30
endnum = 0
loop do
  print "Ruby!"
  num += 1
  break if num == 30
end
#_____________________________________________each method_______________________
array = [1,2,3,4,5]

array.each do |x|
  x += 10
  puts "#{x}"
end
#without do and end
odds = [1,3,5,7,9]
odds.each { |item|
item *= 2
print "#{item}  "
}
#________________________________________________times method_______________________
10.times {
  puts "Humaira Mehraban"
}
#_______________________________________________________until loop____________________
i = 1
until i == 51 do
  print i
  i += 1
end
#_______________________________________________________split method_________redact
puts "Enter some text: "
text = gets.chomp

puts "Enter words to redact: "
redact = gets.chomp

words = text.split(" ")
words.each { |word| 
  if word == redact
    print "REDACTED "
  else
 		print word + " "
  end }
  #______________________________________________________________arrays________________
  demo_array = [100, 200, 300, 400, 500]
  print demo_array[2]    #numbered array
  string_array = ["array1","array2"] #string array

#multidimensional array
multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]
multi_d_array.each { |x| puts "#{x}\n" }
#another example
my_2d_array = [[1,2,3],["humaira","sabrina","negin"]]
  my_2d_array.each do
 |x|
 puts "#{x}\n"
  end
  #___________________________________________________hashes________________________
  #key value , key value
  my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]
# Hash.new create an empty hash
pets = Hash.new 
pets["Stevie"] = "cat"
print pets["Stevie"]

#array and hash with loop_______________________________________________________
friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }
#printing the array elements
languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
 languages.each do |x|
puts x
end
#printting multidimensional array___________________________________________
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each do |x|
x.each do |x2|
puts x2
end
end
#printing hashes _____________________________________________________________
secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
 secret_identities.each do |char, name|
puts "#{char}: #{name}"
 end 
 #_______________________________________histogram
 puts "Text please: "
text = gets.chomp
words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }
#______________myself writed______________
puts "type a text: "
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each {
  |word|
  frequencies[word] += 1
}
frequencies = frequencies.sort_by do |x, count|
  count
end
frequencies.reverse!
frequencies.each do 
|word , frequency|
puts word+" "+frequency.to_s
end
#__________________________________________________methods______________________
#with return
def add(a,b)
  return a+b
  end
  output = add(4,4)
  puts output
  #another
  def greeter(name)
    return name
    end
    greeter("humaira")
  #without return 
  def by_three?(number)
    if number % 3 == 0 
    return true
    else 
    return false
    end
    end
    output = by_three?(9)
    puts output
#____________________blocks are nameless methods________ 
[1, 2, 3, 4, 5].each { |i| puts i*5 }
#_______________________________________________________________sorting array_____________
my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]  #it can be strings too but its A_z
output = my_array.sort!
puts output
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
# for Z_A sorting
books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook } #optional

# Sort your books in descending order, in-place below
output = books.sort! { |firstBook, secondBook| secondBook <=> firstBook }
print output
#this operator <=> works like this ________________________________________________
books.sort do |first, second| 
  if first < second # first book before second alphabetically
    -1
 elsif first > second # first after second
   1
 else # first and second are the same
   0
 end
end
#basic function
def welcome (name)
  return "hello, #{name}"
  end
  puts welcome("humaira")
#block {} or do , end
my_array = [1, 2, 3, 4, 5]

my_array.each {
  |x|
  puts x*x
}
#sorting_________________________________________________________________________________
fruits = ["orange", "apple", "banana", "pear", "grapes"]
output = fruits.sort!
puts output #asc order

#for desc order
output2 = fruits.sort! { |x,y| y <=> x }
print output2
#_________________________________________________________________sorting____________
def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"
#______________________________________________________reverse_sorting_________________
def alphabetize(arr, rev=true)
  arr.sort!
 if rev == true 
  arr.reverse!
 else 
  arr
 end
 end
 numbers = [2,5,1,6,3]
 puts alphabetize(numbers)
 #__________________________________________________________Hashes_______________________
 matz = { "First name" => "Yukihiro",
 "Last name" => "Matsumoto",
 "Age" => 47,
 "Nationality" => "Japanese",
 "Nickname" => "Matz"
}
matz.each {
 |x,y|
 puts "#{x}: #{y}"
}
#for just outputting one value of that,
creatures = { "weasels" => 0,
  "puppies" => 6,
  "platypuses" => 3,
  "canaries" => 1,
  "Heffalumps" => 7,
  "Tiggers" => 1
}

 puts creatures["Tiggers"]
#___________________________________________________nil_______________________
#if the value doesnt exist, the output will be nil , means nothing, not a error
no_nil_hash = Hash.new("this is the default message") #this is for default message in nil
#_____________________________________________________symbols___________________________
menagerie = { :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}
puts menagerie[:giraffe]
#for pushing in an empty array and changing string to symbols  ___________________________
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]


symbols = []

strings.each {
  |s|
   
   symbols.push(s.to_sym)
}
puts symbols
#___________________new syntax for hashes__________________
ovies = {
  one: "1",
  two: "2",
}
puts movies
#__________________________________________________filtering for hashes_______________
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
good_movies = movie_ratings.select {
  |x,y|
  y > 3
}
puts good_movies
#________________________________________________two methods for hashes_________________
my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }
# ==> one two three

my_hash.each_value { |v| print v, " " }
# ==> 1 2 3
 #another example
 movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
movie_ratings.each_key {
  |name|
  puts name
}
movie_ratings.each_value {
  |rating|
  puts rating
}
#____________________________________________raweshe man_______________________
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!
movie_ratings.each {
  |name, rating|
  puts name
}
movie_ratings.each {
  |name, rating|
  puts rating
}
#_______________________________________insert update delete error message_________________
movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end
#_____________________________________________for checking user input _________case______
movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}
puts "type what u want to do"
choice = gets.chomp
case choice 
when 'add'
puts "added"
when "update"
puts "updated"
when "display"
 movies.each {
  |x,y|
puts  "#{x}: #{y}"
}
when "delete"
puts "deleted"
else 
puts "error"
end

#__________________________________________________________just for adding______________________
movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}
puts "type what u want to do"
choice = gets.chomp
case choice 
when 'add'
puts "type the movie name: "
title = gets.chomp
puts "type the rating: "
rating = gets.chomp
puts "added"
movies[title.to_s] = rating #for adding to hash
movies.each {               #for displaying that
  |x,y|
puts  "#{x}: #{y}"
}
when "update"
puts "updated"
when "display"
puts "Movies!"
when "delete"
puts "deleted"
else 
puts "error"
end
#___________________________________for converting user's input to symbols
movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}
puts "type what u want to do"
choice = gets.chomp
case choice 
when 'add'
puts "type the movie name: "
title = gets.chomp
puts "type the rating: "
rating = gets.chomp
puts "added"
movies[title.to_sym] = rating.to_i
movies.each {
  |x,y|
puts  "#{x}: #{y}"
}
when "update"
puts "updated"
when "display"
puts "Movies!"
 

when "delete"
puts "deleted"
else 
puts "error"
end
#______________________________________this is the code I myself have written
#______________________________________insert, update and delete , display
#_______________________________________and its different than that_________________________
movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}
puts "type what u want to do"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp
case choice 
when 'add'
puts "type the movie name: "
title = gets.chomp
puts "type the rating: "
rating = gets.chomp
if movies[title.to_sym].nil?
movies[title.to_sym] = rating.to_i
puts "added"
else
puts "the movie already exist"
end
movies.each {
  |x,y|
puts  "#{x}: #{y}"
}
when "update"
puts "type a movie name"
title = gets.chomp
if movies[title.to_sym].nil?

puts "the movie doesnt exist"
else
puts "whats the new rating"
newRating = gets.chomp
movies[title.to_sym] = newRating.to_i
puts "updated"
end
movies.each {
  |x,y|
puts  "#{x}: #{y}"
}
when "display"
movies.each {
  |x,y|
puts  "#{x}: #{y}"
}
when "delete"
puts "What movie do you want to delete?"
  title = gets.chomp
if movies[title.to_sym].nil?
puts "the movie doesnt exist"
else
movies.delete(title.to_sym)
puts "deleted"
end
movies.each {
  |x,y|
puts  "#{x}: #{y}"
}
else 
puts "error"
end
#_______________________________________________________refactoring___________________________
 
#____________________________________________________ternary operator______________________
puts 3==4 ? true : false      #false
#____________________________________________________when then __________________________
puts "Hello there!"
greeting = gets.chomp
case greeting 
when "English" then puts "Hello!"
when "French" then puts "Bonjour!"
when "German" then puts "Guten Tag!"
when "Finnish" then puts "Haloo!"
else  puts "I don’t know that language!"
end
#function without return
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
 end
 
 puts multiple_of_three(9)
#_________________________________________printing only even numbers_______________
my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each {
  |x| 
  if (x % 2) == 0 
  puts x
  end
}
#________________________________________printing A_Z alphabet___________________________
"A".upto("Z") {
  |letter|
  puts letter
}
#______________________________________________for numbers from 1_100_________________________________
1.upto(100) { |num| print num, " " }
#____oh i really didnt get the .respond_to method , heach yad ngrftm_____________________
age = 26
 puts age.respond_to?(:next)
 #______________________________________________________for pushing to an array____________
 #for numbers 
 [1, 2, 3] << 4
 #for strings
 alphabet = ["a", "b", "c"]
 alphabet.push("d") # old version!
 #update
 alphabet << "d"
#__________________________________________________string with string__________________
favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end
#____________________________________________________refactoring if___________________
puts "One is less than two!" if 1 < 2
#the old versian
if 1 < 2
  puts "One is less than two!"
end
#with ternary operator
puts 1<2 ? "One is less than two!" :  "One is not less than two."
#_______________________________________________the easiest way__________________________
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)
  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." unless n > 0
  Prime.first n
end

first_n_primes(10)
#___________________________________________________another chapter_____________________
#_______________________________collect method__________________________________________
fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect! {
  |num| num * 2
}
puts doubled_fibs
#______________________________________________________yeild________________________
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end

block_test { puts ">>> We're in the block!" }
#______________________________________________________yeild with parameter_____________
def yield_name(name)
  puts "In the method! Let's yield."
  yield("Kim")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yield_name("Eric") { |n| puts "My name is #{n}." }
#______________________________________________________another example______________
def double(n) 
  yield(4) 
  yield(n)
  end
  double(2) {
    |m| puts m*2
  }
#_________________________________________________________procs____________________
multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3)
#the output is _____________________________
#[3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36, 39, 42, 45, 48, 51, 54, 57, 60, 63, 66, 69, 72, 75, 78, 81, 84, 87, 90, 93, 96, 99]
#____________________________________________another example_______________________________
floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new {
  |x| x.to_i
}


ints = floats.collect(&round_down)
print ints
#_________________________________________another example for procs______________________
group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]


over_4_feet = Proc.new {
  |height|
  height >= 4
}

puts group_1.select(&over_4_feet)
puts group_2.select(&over_4_feet)
puts group_3.select(&over_4_feet)
#_________________________________________________yield and procs_____________________

def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)
#____________________________________________calling the procs__________________________
hi = Proc.new {
  puts "Hello!"

}
hi.call
#_________________________________________for changing strings to integer__________________________
strings = ["1", "2", "3"]
nums = strings.map(&:to_i)
#________________________________for changing integers to strings _______________________________
numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts strings_array = numbers_array.map(&:to_s)
#___________________________________________Lambda________________________________________
#changing string to symbol using lambda
strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda {
  |x| x.to_sym
}
symbols = strings.collect(&symbolize)
print symbols
#__________________________________________checking for symbols in array__________________
my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
symbol_filter = lambda {
  |x| x.is_a? Symbol
}
symbols = my_array.select(&symbol_filter)
puts symbols
#______________________________________________checking for integers in array___________
odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]
ints = odds_n_ends.select {|x|x.is_a? Integer}
puts ints
#__________________________________________________proc example_________________
ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]
under_100 = Proc.new{
  |x|
  x < 100
}
youngsters = ages.select(&under_100)
puts youngsters
#__________________________________________________lambda example___________________
#___________________________letters < "M" with hash__________________________________
crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = lambda { |x,y| y<"M"}
a_to_m  = crew.select(&first_half)
puts a_to_m
#____________________________________________object oriented______________________________
#_____________________________class_________________________________________________________________________________________
class Language
  def initialize(name, creator)
    @name = name
    @creator = creator
  end
	
  def description
    puts "I'm #{@name} and I was created by #{@creator}!"
  end
end

ruby = Language.new("Ruby", "Yukihiro Matsumoto")
python = Language.new("Python", "Guido van Rossum")
javascript = Language.new("JavaScript", "Brendan Eich")

ruby.description
python.description
javascript.description
#_____________________________________________class syntax_____________________________

class Person
  def initialize (name)
  @name = name
  puts name
  end
  end
  matz = Person.new("Yukihiro")
#________________________________________________global variable_______________________________
class MyClass
  $my_variable = "Hello!"
 end
 
 puts $my_variable
#________________________________________________instance of class____________________________-
class Person
  def initialize(name, age, profession)
    @name = name
    @age = age 
    @profession = profession
  end
end
#______________________________________________@@ class variable___________________________________
class Person
  @@people_count = 0
  
  def initialize(name)
    @name = name
    @@people_count += 1
  end
  
  def self.number_of_instances
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"

#_____________________________________________inheritance______________________________________
class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError
end

err = SuperBadError.new
err.display_error
#------------------------------------------------another example------------------------------
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
 def fight
  return "Breathes fire!"
 end
 end
#______________________________________________super keyboard__________________________________
class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

class Dragon < Creature
 def fight
 puts "Instead of breathing fire..."
  super
 end
 end
#____________________________________________another example_______________________________
class Message 
  @@messages_sent = 0
  def initialize(from, to)
   @from = from
   @to = to 
   @@messages_sent += 1 
  end
  end
  my_message = Message.new("hi","humaira") 
  class Email < Message
  def initialize (from, to)
  super
  end
  end
#I didn't get that example really
#______________________________________________class project__________________________
class Machine
  @@users = {}
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"
#________________________________________________mine work______________________________
class Computer
  @@users = {}
  def initialize(username,password)
  @username = username
  @password = password 
  @files = {}
  @@users[username] = password
  end
  def create(filename)
  time = Time.now
  @files[filename] = time
     puts "#{filename} was created at #{time} by #{@username}. "
  end
  def Computer.get_users
   @@users
    end
  end
   my_computer = Computer.new("humaira" , "12345")
  my_computer.create("file")
#________________________________________________public and private methods__________________
class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  public    # This method can be called from outside the class.
  
  def about_me
    puts "I'm #{@name} and I'm #{@age} years old!"
  end
  
  private   # This method can't!
  
  def bank_account_number
    @account_number = 12345
    puts "My bank account number is #{@account_number}."
  end
end

eric = Person.new("Eric", 26)
eric.about_me
eric.bank_account_number
#____________________________________________another example___________________________
class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end
  public def bark
puts "Woof!"
  end
  private def id
  @id_number = 12345
  end
end
#____________________________________________attr_reader, attr_writer,attr_accessor_______
class Person
  attr_reader :name           #no need for method 
  attr_accessor :job        #it means both attr_reader, attr_writer for job
  def initialize(name, job)
    @name = name
    @job = job
  end
end
#PI____________
puts Math::PI
#___________________________________________Module______________________________________
module Circle

  PI = 3.141592653589793
  
  def Circle.area(radius)
    PI * radius**2
  end
  
  def Circle.circumference(radius)
    2 * PI * radius
  end
end
#require , for today's date
require 'date'

puts Date.today
#including math_________________
class Angle
  include Math
  attr_accessor :radians
  
  def initialize(radians)
    @radians = radians
  end
  
  def cosine
    cos(@radians)
  end
end

acute = Angle.new(1)
acute.cosine                    #I really didn't this example________
#_______________________________________________________Mixin___________________________
#When a module is used to mix additional behavior and information into a class, it’s called a mixin
module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump
#__________________________________________module and class example___________________
module MartialArts
  def swordsman
    puts "I'm a swordsman."
  end
end

class Ninja
  include MartialArts

  def initialize(clan)
    @clan = clan
  end
end

class Samurai
  include MartialArts

  def initialize(shogun)
    @shogun = shogun
  end
end

ninja = Ninja.new("Some Clan")
samurai = Samurai.new("Some Shogun")
ninja.swordsman
samurai.swordsman
#______________________________________________time with extend keyword_________________
module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end

class TheHereAnd
  extend ThePresent
end

TheHereAnd.now

#____________________________________________about banking real world example_____________

class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)
#_________________________________________________that example by me _________________________
#about account in bank
class Account 
  attr_reader :name
  attr_reader :balance
  def initialize(name , balance = 100)
  @name = name
  @balance = balance
  end
  private 
  def pin
  @pin = 1234
  end
  private 
  def pin_error
  return "Access denied: incorrect PIN."
  end
  public 
  def display_balance(pin_number) 
  if pin == pin_number
  puts "Balance: $#{@balance}."
  else 
  puts pin_error
  end
  end
  public 
  def withdraw(pin_number , amount)
  if pin == pin_number
  puts "Withdrew #{amount}. New balance: $#{@balance}."
  else 
  puts pin_error
  end
  end
  end
  checking_account = Account.new("humaira", 200)
 #____________________for_running_the_program______________Ctrl + Alt + N_____________________________