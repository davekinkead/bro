require_relative 'bro/flex'

module Bro

	# A Bro can't flex without warming up so start out with some light config
	def self.warmup(config={})
		defaults = {

			# select a appropriate number to overpower your own legit commits
			minimum_commits: 5,

			# a suitable location for the flexing to occur - this will get nuked
			target_dir: '../bromancing-the-stone',

			# an empty github repo you have push rights to
			repo: 'git@github.com:your-username/bromancing-the-stone.git',
		}

		Bro::Flex.new(defaults.merge config)
	end
end
