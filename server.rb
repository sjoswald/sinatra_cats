require 'sinatra'
require 'sinatra/reloader' if development?

def load_pictures
    Dir.glob("public/pictures/*.{jpeg, JPEG}")
end

get '/cats' do
    @pictures = load_pictures
    erb :index
end
