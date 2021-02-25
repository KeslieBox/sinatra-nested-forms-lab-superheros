require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :new
    end

    get '/teams' do
        erb :new
    end

    post '/teams' do
        # binding.pry
       @team = params[:team]
       @members = params[:team][:members]
    #    binding.pry
        erb :team
    end


end
