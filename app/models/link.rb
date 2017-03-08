require 'data_mapper'
require 'dm-postgres-adapter'

class Link
  include DataMapper::Resource
  property :id, Serial
  property :title, String
  property :url, String
end
# the interpolation used for the 'ENV' settings will set the ending of this database name
# to 'test', whereas when the app is used via rackup, it will use the development mode.
DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
