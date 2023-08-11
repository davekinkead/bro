module Bro
	module Git

		# Creates a series of file changes and commits from an array of dates
		# so you can flex on brogrammers with your awesome new contrib graph
		def flex_on_github_with(dates)
			print 'Flexing'

			# Setup the dir for git commits
			bro_dir = File.join Dir.getwd, @config[:target_dir]
			bro_file = File.join bro_dir, '.bro'

			`rm -rf #{bro_dir}`
			`mkdir #{bro_dir}`
			`cd #{bro_dir} && git init`
			`cd #{bro_dir} && touch #{bro_file}`

			# Write something on the file and commit it for each date
			dates.each do |date|
				print '.'

				@config[:minimum_commits].times do
					File.write(bro_file, "#{DateTime.now }\n", File.size(bro_file), mode: 'a')
					`cd #{bro_dir} && git add -A && git commit --date="#{date.rfc2822}" -m "Updating brah"`
				end
			end

			`cd #{bro_dir} && git remote add github #{@config[:repo]}`
			`cd #{bro_dir} && git push github main --force`
		end
	end
end
