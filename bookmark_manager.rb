ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './app/models/link'
require './app/models/tag'
require './app/models/dm_start'

class BookmarkManager < Sinatra::Base

  start_datamapper

  get "/" do
    erb(:index)
  end

  get "/bookmarks" do
    @link = Link.all
    #@tag = Tag.all
    erb(:database)
  end

  get "/bookmarks/new" do
    erb(:newlink)
  end

  post "/savelink" do
    link = Link.create(title: params[:title], url: params[:url])
    tag = Tag.create(tags: params[:tags])
    # link.tags << tag
    # link.save
    LinkTag.create(:link => link, :tag => tag)

    redirect('/bookmarks')
  end
end
