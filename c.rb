# C - The Kth Time Query
N,Q = gets.chomp.split.map(&:to_i)
A   = gets.chomp.split.map(&:to_i)
X = []
K = []
Q.times do |i|
  X[i],K[i] = gets.chomp.split.map(&:to_i)
end

w = {}
#STDERR.puts "#{N} #{Q} #{A} #{X} #{K}"

A.each_with_index do |a,i|
  #STDERR.puts "#{a}"
  w[a] ||= []
  w[a] << (i + 1)
end
#STDERR.puts "#{w}"
Q.times do |i|
  #puts "x = #{X[i]} k= #{K[i]} w=#{w[X[i]]}"
  if w.has_key?(X[i]) then
    result = w[X[i]][K[i]-1] 
    if result == nil then
      result = -1
    end
    puts "#{result}"
  else
    puts "#{-1}"
  end
end

