file_in = open('input.txt')
n = file_in.gets
prev = "Default"
File.write('output.txt',"")
while x = file_in.gets
  if x != prev
    File.write('output.txt',x, mode: 'a')
  end
  prev = x
end
file_in.close