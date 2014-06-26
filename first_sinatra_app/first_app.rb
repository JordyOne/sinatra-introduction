require 'sinatra/base'

class MyApp < Sinatra::Base

  get '/' do
    erb :root  # renders the root.erb page in the views directory
  end

  get '/greeting' do
    erb :greeting, :locals => { :salutation => "Aloha", :name => "Spencer"}
  end

  run! if app_file == $0

end