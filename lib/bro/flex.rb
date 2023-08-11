require_relative 'draw'
require_relative 'git'

module Bro
	class Flex
		include Bro::Draw
		include Bro::Git

		def initialize(config={})
			@config = config
		end

		def draw(str)
			flex_on_github_with art_to_dates(str)
		end
	end
end
