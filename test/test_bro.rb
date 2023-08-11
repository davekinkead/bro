require 'date'
require 'test_helper'

describe Bro do
	describe Bro::Draw do
		let(:host) { Class.new { include Bro::Draw }}

    it 'returns last Sunday when it isnt Sunday' do
      expect( host.new.find_last_sunday Date.parse('2022-12-31') ).must_equal Date.parse('2022-12-25')
    end

    it 'returns the same day when it is Sunday' do
      expect( host.new.find_last_sunday Date.parse('2023-01-01') ).must_equal Date.parse('2023-01-01')
    end

    it 'removes the first empty lines and leading tabs' do
    	expect( host.new.remove_tabs_and_empty_line_break "\n\t\t  XX  \n" ).must_equal "  XX  \n"
    end

    it 'converts art to an array of dates' do
    	dates = host.new.art_to_dates "\n XX  XX\n   X\n"

    	expect( dates.length ).must_equal 5
    	expect( dates.first.class ).must_equal Date
    end

    it 'interprets integers as heat maps (0-4)' do
    	dates = host.new.art_to_dates "\n 11  22\n  4 \n"

    	expect( dates.length ).must_equal 15
    end
	end

	describe Bro::Write do
		let(:host) { Class.new { include Bro::Write }}

		it 'converts a string into an array of dates' do
			dates =  host.new.string_to_dates('a')

			expect( dates.length ).must_equal 18
    	expect( dates.first.class ).must_equal Date
		end

	end

	# uncomment these tests to try it out
	# it 'draws' do
	# 	bro = Bro.warmup({ repo: 'git@github.com:davekinkead/garbage.git' })
	# 	bro.draw('
	# 		                               333331133333333    444444444444444    333331111144444    44332211                            333                                 2                       2
	# 		  33    33       33   33       333331133333333    444444444444444    333331111144444      44332211            111          2 2 2                     2        22222                   222
	# 		                               333331133333333    222222222222222    333331111144444        44332211             11                      2         22222    222222333      333       2222
	# 		                               111111111111111    222222222222222    333331111144444          44332211             4                    222  44  33333333  433333333333  333333     22223
	# 		   333333      33        33    333331133333333    222222222222222    333331111144444            44332211       444 4 444               333344444433333333444433334444333333333333  222333
	# 		 333    333     333    333     333331133333333    333333333333333    333331111144444              44332211      4444444              3333444444444443334444444444444444333443333333444444
	# 		33        33      333333       333331133333333    333333333333333    333331111144444                4433221111111111111111111111111444444444444444444444444444444444444444444444444444444
	# 	')
	# end
end
