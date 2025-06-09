file_in = open('b/input.txt')
file_in.gets
cur = 0
res = 0
while x = file_in.gets
  x = x.to_i
  if x == 1
    cur += 1
  else
    cur = 0
  end
  if cur > res
    res = cur
  end
end

File.write('b/output.txt',res)
file_in.close