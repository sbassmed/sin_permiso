require 'sinatra'

get '/' do

    if autorizado?
         erb :index
    else
        redirect "/denied"
    end
end

def autorizado?
   headers ['permiso'] == 'soy-un-token-secreto'
end
