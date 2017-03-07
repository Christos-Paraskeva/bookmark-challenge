require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base
  enable :sessions

  get "/" do
    # session['link'] = Link.all
    # @link = session['link']
    @link = Link.all
    erb(:database)
  end
end
