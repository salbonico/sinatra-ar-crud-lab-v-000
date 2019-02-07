
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @articles = Artist.all
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
    article = Article.new
    article.title = params[:title]
    article.content = params[:content]
    article.save

    redirect "/articles/#{article.id}"
  end

  get 'articles/:id/edit' do
    
  end

get '/articles/:id' do
@article = Article.find(params[:id])
erb :show
end



end
