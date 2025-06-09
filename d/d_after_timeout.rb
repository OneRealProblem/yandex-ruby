# Смысл такой - каждый раз после составления успешной последовательности
# Мы возвращаемся к последней открывающейся скобке и меняем её на закрывающуюся
# Когда перебрали всё с этим изменением - идём за следующей на очереди открытой скобкой
def f(cnt,ind,n,init)
  if (cnt <= n-ind-2) # Если осталось ещё место для двух скобочек ()
    init[ind] = '('
    f(cnt+1,ind+1,n,init)
  end
  if cnt > 0 # Если места для открытий не осталось, а закрыть надо
    init[ind] = ')'
    f(cnt-1,ind+1,n,init)
  end
  if ind == n # Поставили n скобок и вышли за пределы строки
    if cnt == 0 # Последовательность правильная
      File.write('d/output.txt',init.join("") + "\n", mode: 'a')
    end
  end
end

file_in = open('d/input.txt')
n = file_in.gets.to_i * 2
init = Array.new(n,0)
cnt = 0
ind = 0
File.write('d/output.txt',"")
f(cnt,ind,n,init)
file_in.close