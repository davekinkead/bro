require_relative 'bro/flex'

module Bro

	# A Bro can't flex without warming up so start with a few reps of config
	def self.warmup(config={})
		defaults = {

			# select a appropriate number to overpower your own legit commits
			minimum_commits: 10,

			# a suitable location for the flexing to occur
			target_dir: '../bromancing-the-stone',

			# an empty github repo you have push rights to
			repo: 'git@github.com:your-username/bromancing-the-stone.git',

			# optionally specify a year to flex in
			year: nil,
		}

		Bro::Flex.new(defaults.merge config)
	end
end
