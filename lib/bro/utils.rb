require 'date'

module Bro
	module Utils
		def find_last_sunday(date)
			date.sunday? ? date : find_last_sunday(date - 1)
		end

		def remove_tabs_and_empty_line_break(str)
			str.sub(/$\n/, '').gsub(/\t/, '')
		end
	end
end
