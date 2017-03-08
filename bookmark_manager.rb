ENV['RACK_ENV'] ||= 'development'


require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base

  get "/" do
    erb(:index)
  end

  get "/bookmarks" do
    @link = Link.all
    erb(:database)
  end

  get "/bookmarks/new" do
    erb(:newlink)
  end

  post "/savelink" do
    Link.create(title: params[:title], url: params[:url])
    redirect('/bookmarks')
  end
end
