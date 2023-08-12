require_relative 'utils'

module Bro
	module Write
		include Bro::Utils

		# Converts a string into an array of dates
		def string_to_dates(str)

			# determine when to begin on the timeline
			last_sunday = find_last_sunday(Date.today)
			starting_sunday = last_sunday - (CHAR_WIDTH * str.size * 7)

			# generate dates for each pixel of each char in the string
			dates = str.split('').map.with_index do |char, char_index|
				char = remove_tabs_and_empty_line_break FONT[char.downcase.to_sym]
				char.each_line.map.with_index do |line, line_index|
					line.split('').map.with_index do |pixel, pixel_index|
						starting_sunday + (pixel_index * 7 + line_index) + (char_index * CHAR_WIDTH * 7) unless pixel.strip.empty?
					end
				end
			end

			dates.flatten.compact.sort
		end

		CHAR_WIDTH = 6
		FONT = {
			a: "
				 XXX
				X   X
				X   X
				XXXXX
				X   X
				X   X
				X   X
			",
			b: "
				XXXX
				X   X
				X   X
				XXXX
				X   X
				X   X
				XXXX
			",
			c: "
				 XXXX
				X
				X
				X
				X
				X
				 XXXX
			",
			d: "
				XXXX
				X   X
				X   X
				X   X
				X   X
				X   X
				XXXX
			",
			e: "
				XXXXX
				X
				X
				XXXX
				X
				X
				XXXXX
			",
			f: "
				XXXXX
				X
				X
				XXXX
				X
				X
				X
			",
			g: "
				 XXXX
				X
				X
				X
				X   X
				X   X
				 XXXX
			",
			h: "
				X   X
				X   X
				X   X
				XXXXX
				X   X
				X   X
				X   X
			",
			i: "
				XXXXX
				  X
				  X
				  X
				  X
				  X
				XXXXX
			",
			j: "
				  XXX
				    X
				    X
				    X
				    X
				X   X
				 XXX
			",
			k: "
				X   X
				X  X
				X X
				XX
				X X
				X  X
				X   X
			",
			l: "
				X
				X
				X
				X
				X
				X
				XXXXX
			",
			m: "
				X    X
				XX  XX
				X XX X
				X    X
				X    X
				X    X
				X    X
			",
			n: "
				X    X
				XX   X
				X X  X
				X  X X
				X   XX
				X    X
				X    X
			",
			o: "
				 XXX
				X   X
				X   X
				X   X
				X   X
				X   X
				 XXX
			",
			p: "
				XXXX
				X   X
				X   X
				XXXX
				X
				X
				X
			",
			q: "
				 XXX
				X   X
				X   X
				X   X
				X X X
				X  X
				 XX X
			",
			r: "
				XXXX
				X   X
				X   X
				XXXX
				X  X
				X   X
				X   X
			",
			s: "
				 XXX
				X   X
				X
				XXXXX
				    X
				X   X
				 XXX
			",
			t: "
				XXXXX
				  X
				  X
				  X
				  X
				  X
				  X
			",
			u: "
				X   X
				X   X
				X   X
				X   X
				X   X
				X   X
				 XXX
			",
			v: "
				X   X
				X   X
				X   X
				 X X
				 X X
				 X X
				  X
			",
			w: "
				X   X
				X   X
				X X X
				X X X
				X X X
				X X X
				 XXX
			",
			x: "
				X   X
				X   X
				 X X
				  X
				 X X
				X   X
				X   X
			",
			y: "
				X    X
				X    X
				 X  X
				  X
				  X
				  X
				  X
			",
			z: "
				XXXXX
				    X
				   X
				  X
				 X
				X
				XXXXX
			",
			' ': "







			",
			'.': "






				  X
			",
			'!': "
				  X
				  X
				  X
				  X
				  X

				  X
			"
		}
	end
end
