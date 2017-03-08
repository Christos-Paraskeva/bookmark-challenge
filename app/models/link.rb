# DATABASE_URL = postgres://hfphdwnmtuoqim:af46470b6a78ec7eb21974a5c3daaf5b05b146fb903ed9dd0f69ebf5015856fb@ec2-54-235-123-159.compute-1.amazonaws.com:5432/d6eicuho6vtlg8
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
DataMapper.setup(:default, "postgres://hfphdwnmtuoqim:af46470b6a78ec7eb21974a5c3daaf5b05b146fb903ed9dd0f69ebf5015856fb@ec2-54-235-123-159.compute-1.amazonaws.com:5432/d6eicuho6vtlg8" || "postgres://localhost/bookmark_manager_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
