require_relative 'utils'

module Bro
	module Draw
		include Bro::Utils

		# Converts ascii art into an array of dates
		def art_to_dates(art_string)

			# cleanup the input string
			art_string = remove_tabs_and_empty_line_break art_string

			# determine when to begin on the timeline
			longest_line = art_string.each_line.map { |line| line.size }.max
			last_sunday = find_last_sunday(Date.today)
			starting_sunday = last_sunday - (longest_line * 7)

			# generate dates for each char in the string
			dates = art_string.each_line.map.with_index do |line, line_index|
				line.split('').map.with_index do |char, char_index|
					unless char.strip.empty?
						(char.to_i + 1).times.map do
							starting_sunday + (char_index * 7 + line_index)
						end
					end
				end
			end

			dates.flatten.compact.sort
		end
	end
end
