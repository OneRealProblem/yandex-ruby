file_in = open('c/input.txt')
file_in.gets
prev = "Default"
File.write('c/output.txt',"")
while x = file_in.gets
  if x != prev
    File.write('c/output.txt',x, mode: 'a')
  end
  prev = x
end
file_in.close