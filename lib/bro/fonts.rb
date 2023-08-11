module Bro
	module Fonts

		# Turn your contrib graph into a billboard
		def write (msg)
			draw_msg_as_art msg
		end


		def draw_msg_as_art(msg)

		end

		# Cleans and fetches a charcter from a font library
		def char(str)
			result = remove_tabs_and_empty_line_break(FONT_5x7[str.upcase.to_sym])
			# FONT_5x7[str.upcase.to_sym].gsub(/\t/, '').each_line do |line|
			# 	p line
			# end
		end

		private

		def remove_tabs_and_empty_line_break(char)
			char.sub(/\n/, '').gsub(/\t/, '')
		end

		FONT_5x7 = {
			max_length: 8,
			A: "
				 XXX
				X   X
				X   X
				XXXXX
				X   X
				X   X
				X   X
			",
			B: "
				XXXX
				X   X
				X   X
				XXXX
				X   X
				X   X
				XXXX
			",
			C: "
				 XXXX
				X
				X
				X
				X
				X
				 XXXX
			",
			D: "
				XXXX
				X   X
				X   X
				X   X
				X   X
				X   X
				XXXX
			",
			E: "
				XXXXX
				X
				X
				XXXX
				X
				X
				XXXXX
			",
			F: "
				XXXXX
				X
				X
				XXXX
				X
				X
				X
			",
			G: "
				 XXXX
				X
				X
				X
				X   X
				X   X
				 XXXX
			",
			H: "
				X   X
				X   X
				X   X
				XXXXX
				X   X
				X   X
				X   X
			",
			I: "
				XXXXX
				  X
				  X
				  X
				  X
				  X
				XXXXX
			",
			J: "
				  XXX
				    X
				    X
				    X
				    X
				X   X
				 XXX
			",
			K: "
				X   X
				X  X
				X X
				XX
				X X
				X  X
				X   X
			",
			L: "
				X
				X
				X
				X
				X
				X
				XXXXX
			",
			L: "
				X
				X
				X
				X
				X
				X
				XXXXX
			",
			L: "
				X
				X
				X
				X
				X
				X
				XXXXX
			",
			O: "
				 XXX
				X   X
				X   X
				X   X
				X   X
				X   X
				 XXX
			",

		}
	end
end
