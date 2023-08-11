require_relative 'git'
require_relative 'draw'
require_relative 'write'

module Bro
	class Flex
		include Bro::Git
		include Bro::Draw
		include Bro::Write

		def initialize(config={})
			@config = config
		end

		def draw(str)
			flex_on_github_with art_to_dates(str)
		end

		def write(str)
			flex_on_github_with string_to_dates(str)
		end
	end
end
