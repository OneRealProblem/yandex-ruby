file_in = open('a/input.txt')
s1 = file_in.gets.chomp.split("")
count = 0
s2 = file_in.gets.chomp.split("")
for c in s2
  if s1.include?(c)
    count += 1
  end
end
File.write('a/output.txt',count)
file_in.close