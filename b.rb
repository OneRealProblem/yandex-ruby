n = gets.to_i
cur = 0
res = 0
for i in 1..n
  x = gets.to_i
  if x == 1
    cur += 1
  else
    cur = 0
  end
  if cur > res
    res = cur
  end
end

puts res