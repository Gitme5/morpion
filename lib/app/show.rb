class Show

	def display_board(array)

		lines = ["  ","|"," "*2,"1"," "*2,"|"," "*2,"2"," "*2,"|"," "*2,"3"," "*2,"|"]
		line_1 = ["A"," ","|"," "*2,array[0]," "*2,"|"," "*2,array[1]," "*2,"|"," "*2,array[2]," "*2,"|"]
		line_2 = ["B"," ","|"," "*2,array[3]," "*2,"|"," "*2,array[4]," "*2,"|"," "*2,array[5]," "*2,"|"]
		line_3 = ["C"," ","|"," "*2,array[6]," "*2,"|"," "*2,array[7]," "*2,"|"," "*2,array[8]," "*2,"|"]
		line_h = ["  ","-"*19]
		
		puts ""
		puts lines.join
		puts line_h.join
		puts line_1.join
		puts line_h.join
		puts line_2.join
		puts line_h.join
		puts line_3.join
		puts ""

		

	end

end
