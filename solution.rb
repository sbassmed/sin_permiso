require 'sinatra'

get '/' do

    if autorizado?
         erb :index
         body 'Si lo logramos!'
    else
        redirect "/denied"
        body 'Sin Permiso'
    end
end

def autorizado?
   headers ['HTTP_PERMISO'] == 'soy-un-token-secreto'
end
