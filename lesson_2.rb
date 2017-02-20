def dhms2sec(days,hrs,min,sec)
res = days*86400 + hrs*3600 + min*60 + sec
end

result =  Array.new
t0 = Time.now 


result [0] = t0                                       #получаем время 
i =0
loop do                                               #создаем цикл с 4 повторениями 
	i +=1 
	result[i] = t0 + dhms2sec(0,0,i*15,0)             #добавлям шаг в 15 мин
	break if i==4
end

i =0
loop do                                               #создаем цикл с 8 повторениями
	i+=1 
	result[i+4] = result[4]+ dhms2sec(0,0,i*30,0)     #добавляем шаг в 30 мин
	break if i==8
end

i =0
loop do                                                 #создаем цикл с 7 повторениями
	i+=1 
	result[i+12] = result[12] + dhms2sec(0,i*1,0,0)     #добавляем шаг в 1 час
	break if i==7
end

i =0
loop do                                                 #создаем цикл с 5 повторениями
	i+=1 
	result[i+19] = result[19] + dhms2sec(i*1,0,0,0)     #добавляет  в 1 день
	break if i==5
end

result.each do |lang|                                   #выводим массив времени
  puts  lang
end


