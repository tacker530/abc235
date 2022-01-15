# B - Climbing Takahashi
N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

STDERR.puts "#{N} #{H}"
higher = 0
H.each do |h|
  if  h > higher
    higher = h
  else
    break
  end 
end

puts "#{higher}"