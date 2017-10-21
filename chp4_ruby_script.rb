# defining func for checking palindrome

def pal_tester(s)
  if s.reverse == s
    puts "its a pal"
  else 
    puts "not a pal"
  end
end

a = "A man, a plan, a canal, Panama".split(', ').join.split(' ').join.downcase

# testing pal_tester
print (pal_tester(a))

(1..17).to_a.each do |elem|
  puts 2**elem
end

# yeller
def yeller(s)
  puts s.join.upcase
end

b = ['a', 'b', 'c']
yeller(b)

# random 8 letters 
def random_subdomain
  puts ('a'..'z').to_a.shuffle[0..6].join
end

random_subdomain

# shuffle letters in a string 
def string_shuffle(s)
  puts s.split('').shuffle.join
end

string_shuffle("foobar")

# hashes 
firstHash = { "one" => "uno", "two" => "dos", "three" => "tres" }
firstHash.each do |key, value|
  puts "’#{key}’ in Spanish is ’#{value}’"
end

# hash exercise 2 
person1 = { :first => "tom", :last => "abbot" }
person2 = { :first => "jane", :last => "abbot" }
person3 = { :first => "jeff", :last => "abbot" }

params = { :father => person1, :mother => person2, :child => person3 }

params[:father][:first]

# hash merge output
{ "a" => 100, "b" => 200 }.merge({ "b" => 300 })

# comparing literal and named constructors
(1..6) == Range.new(1, 6)

# getting the class inheritance
Range.superclass.superclass
Hash.superclass.superclass
Symbol.superclass.superclass

# defining a class and using self
class Word < String
  def palindrome?
    self.downcase == reverse.downcase
  end
end

s = Word.new('Malayalam')
s.palindrome?
