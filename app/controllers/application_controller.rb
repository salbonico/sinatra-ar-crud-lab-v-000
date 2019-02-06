
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  get '/articles' do
    @articles = Article.all

    erb :index
  end

  post '/articles' do

    binding.pry
    article = Article.new
    article.title = params[:title]
    article.content = params[:content] 
  end

end
