require 'sinatra'
require 'net/http'

get '/' do

    if autorizado?
         body "Si lo logramos!"
    else
        body "Sin Permiso"
    end
end

def autorizado?
  request.env['HTTP_PERMISO'] == 'soy-un-token-secreto'
end
