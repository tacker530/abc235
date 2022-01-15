# 
# D - Multiply and Rotate
# 
A,N = gets.chomp.split.map(&:to_i)
STDERR.puts "#{A} #{N}"

def multi(i)
  i * A
end

def rotate(i)
  if i%10 == 0 then
    i
  else
    w = i.to_s.chars
    len = w.size
    result = w[len-1]
    w[0..-2].each do |x|
      result << x
    end
    result
  end
end

STDERR.puts "multi = #{multi(1)}"
STDERR.puts "rotate = #{rotate(123)}"
STDERR.puts "rotate = #{rotate(120)}"

counter = 0

dp = Array.new(1000) do |i|
  Array.new
end
dp[0][0] = 0

1000.times do |i|
  dp[i].each_with_index do |v,j|
    puts "#{i} #{j} #{dp[i][j]}"
    dp[i+1] << multi(v) 
    dp[i+1] << rotate(v)
    dp[i+1].compact!
    if dp[i+1].include?(N)then
      puts "#{i+1}"
    end
    #puts "#{dp[i+1]}"
  end
end
