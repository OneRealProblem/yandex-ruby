# Решение - обход в ширину
# Инициализируем граф списками связности, после чего
# обходим граф слоями

INF= (2**(0.size * 8-2) -1)

class V
  attr_accessor :x, :y, :no

  def initialize(x,y,n)
    @x = x
    @y = y
    @no = n
  end
end

file_in = open('g/input.txt')
n = file_in.gets.to_i
vs = []
neigh = []

# VORTEXES INIT
(0...n).each do |i|
  x,y = file_in.gets.chomp.split().map{ |x| x.to_i }
  vs << V.new(x,y,i)
end

k = file_in.gets.to_i
st, fin = file_in.gets.chomp.split().map{ |x| x.to_i-1 }
file_in.close

# NEGHBORS INIT
(0...n).each do |i|
  neigh[i] = vs.find_all { |v| ((vs[i].x - v.x).abs + (vs[i].y - v.y).abs).between?(1,k)}
end
# MAIN INIT DONE

visited = []
queue = []
d = []
n.times do
  d << INF
  visited << false
end
visited[st] = true
d[st] = 0
queue.push(st)
while !visited[fin]
  if queue.empty?
    d[fin] = -1
    break
  end
  w = vs[queue.shift]
  neigh[w.no].each do |v|
    if !visited[v.no]
      visited[v.no] = true
      d[v.no] = d[w.no] + 1
      queue.push(v.no)
    end
  end
end

File.write('g/output.txt',d[fin])
