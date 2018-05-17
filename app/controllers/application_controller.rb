require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get "/" do
    erb :super_hero
  end
  
  post "/teams" do
    
    @team = Team.new(params[:team])
    
    params[:team][:hero].collect do |details|
      Hero.new(details)
    end
    
    @heros = Hero.all
    
    @heros.each do |hero|
      puts hero.name 
    ned
    
    erb :team
  end
end
