
def sec2dhms(seсs)
 time = seсs.round           # Отбрасываем микросекунды.
 sec = time % 60             # Извлекаем секунды.
 time /= 60                  # Отбрасываем секунды.
 mins = time % 60            # Извлекаем минуты.
 time /= 60                  # Отбрасываем минуты.
 hrs = time % 24             # Извлекаем часы.
 time /= 24                  # Отбрасываем часы.
 days = time                 # Дни (последний остаток).
 [days, hrs, mins, sec]      # Возвращаем массив [d,h,m,s].
end


puts 'Enter the start date in seconds'
t1 = gets.chomp.to_i                       # входящие данные (дата начала)
puts 'Enter the end date in seconds'
t2 = gets.chomp.to_i					   #входящие данные (дата окончания)

outs = ''  									#переменная для вывода конечного результата

result = sec2dhms (t2 - t1) 				#вычитаем разницу во времени


	
	if result[0] == 1 							#вводим условие с целью определения правильного окончания в словах

		outs += result[0].to_s + ' day ' 

	elsif result[0] > 1 

		outs += result[0].to_s  + ' days '

	end
	
	if result[1] == 1    #вводим условие с целью определения правильного окончания в словах

		outs += result[1].to_s + ' hour '
		 

	elsif result[1] > 1 

		outs += result[1].to_s +  ' hours '  
	end

	if result[2] == 1    #вводим условие с целью определения правильного окончания в словах

		outs += result[2].to_s + ' minute '

	elsif result[2] > 1  #вводим условие с целью определения правильного окончания в словах

		outs += result[2].to_s + ' minutes '

	end

	if result[2] >= 1 or result[1] >=1 or result[0] >= 1 #данное условие  пределяет нужно ли ставить 'and' перед секундами 

		if result[3] == 1 #вводим условие с целью определения правильного окончания в словах

			outs += ' and ' + result[3].to_s + ' second '  

			elsif result[3] > 1  #вводим условие с целью определения правильного окончания в словах
	
			outs += ' and ' + result[3].to_s + ' seconds '  

		end
	else 
		if result[3] == 1     #вводим условие с целью определения правильного окончания в словах          

			outs += result[3].to_s + ' second' 

			elsif result[3] > 1 #вводим условие с целью определения правильного окончания в словах
	
			outs +=  result[3].to_s + ' seconds'  

		end


	end

puts ''
puts 'Time passed is: '
puts outs #выводим результат