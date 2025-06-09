file_in = open('e/input.txt')
s1 = file_in.gets.chomp.split("").sort
flag = 0
s2 = file_in.gets.chomp.split("").sort
flag = 1 if s1 == s2
File.write('e/output.txt',flag)
file_in.close