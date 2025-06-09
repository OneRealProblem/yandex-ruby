file_in = open('e/input.txt')
s1 = file_in.gets.chomp.split("").sort
flag = 1
s2 = file_in.gets.chomp.split("").sort
if s1.size != s2.size
  flag = 0
end
for c in s2
  if flag == 1 and s1[0] == (c)
    s1.shift
  else
    flag = 0
    break
  end
end
File.write('e/output.txt',flag)
file_in.close