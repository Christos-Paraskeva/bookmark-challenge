require 'data_mapper'
require 'dm-postgres-adapter'

class Tag
  include DataMapper::Resource
  property :id, Serial
  property :tags, String#, length => 10

  has n, :links, :through => Resource
end
# the interpolation used for the 'ENV' settings will set the ending of this database name
# to 'test', whereas when the app is used via rackup, it will use the development mode.

# the or statement below causes an rspec test to delete everything off the heroku database
# need to find a way to not access the heroku db when a test is run.
# DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
# DataMapper.finalize
# DataMapper.auto_upgrade!
