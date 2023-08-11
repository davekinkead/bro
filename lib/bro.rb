require_relative 'bro/flex'

module Bro
	def self.warmup(config={})
		Bro::Flex.new(config)
	end
end
