require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      params[:ships].each do |ships_attributes|
        Ship.new(ships_attributes)
      end
      @ships = Ship.all
      erb :'pirates/show'
    end

  end
end
