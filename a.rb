# a.rb
# 3 つの数字 x,y,z をこの順に並べてできる 3 桁の整数を xyz と表すことにします。
#どの桁も 0 でない 3 桁の整数 abc が与えられるので、abc+bca+cab を求めてください。

a,b,c = gets.chomp.chars.map(&:to_i)

STDERR.puts "#{a},#{b},#{c}"

puts a*100+b*10+c + b*100+c*10+a + c*100+a*10+b