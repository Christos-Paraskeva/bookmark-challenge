require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base
  #enable :sessions

  get "/" do
    links = []
    Link.all.each do |l|
      links << l.url.to_s
    end
    @links = links.join(' ')
    erb(:database)
  end
end
