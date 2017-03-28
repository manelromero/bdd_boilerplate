require 'sinatra'
require 'sinatra/base'

set :static, true
set :public_folder, './public/'

class App < Sinatra::Base
  get '/' do
    File.read(File.join('public', 'index.html'))
  end
end
