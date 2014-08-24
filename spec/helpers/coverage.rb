
# Don't track coverage when running parallel.
# We can get rid of this 'unless' when simplecov 0.8.0 comes out:
# https://github.com/colszowka/simplecov/pull/185
# unless ENV['TEST_ENV_NUMBER'] || ENV['DRB']
	require 'simplecov'
	# if ENV['USE_RCOV']
	# 	require 'simplecov-rcov'
	# 	SimpleCov.formatter = SimpleCov::Formatter::RcovFormatter
	# end
	SimpleCov.start do
		# add_filter "vendor/bundle/"
		# add_filter "vendor/cache/"
		# add_filter "config/"
		# add_filter "spec/"
		# add_filter "/STUB_"
		# add_filter "/SPIKE_"
		add_group "Controllers", "app/controllers/"
		add_group "Helpers", "app/helpers/"
		add_group "Models", "app/models/"
		add_group "Lib", "lib"
	end
# end
