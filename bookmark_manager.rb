ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require './app/models/link'
require './app/models/tag'
require_relative './app/models/dm_start'

class BookmarkManager < Sinatra::Base

  enable :sessions

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
    link = Link.create(title: params[:title], url: params[:url])
    tag = Tag.create(tags: params[:tags])
    LinkTag.create(:link => link, :tag => tag)
    redirect('/bookmarks')
  end

  post "/search_tags" do
    @link = Link.all
    @x = session[:tag_name]=params[:tag]
    erb(:display_tags)
  end

end
