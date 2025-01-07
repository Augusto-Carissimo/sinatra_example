require 'sinatra'
require_relative './db.rb'

get '/' do
  'Sinatra example'
end

get '/users/:name?' do
  find_user(DB.get_users, params['name']).to_json
end

def find_user(users, name = nil)
  return users if name.nil?
  users.filter { |user| user['name'] == name }
end

