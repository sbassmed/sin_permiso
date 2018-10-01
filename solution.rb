require 'sinatra'

get '/' do

    if autorizado?
         env['permiso'] ==  'Si lo logramos!'
    else
        env['permiso'] ==  'Sin Permiso'
    end
end

def autorizado?
   env['permiso'] == 'soy-un-token-secreto'
end
