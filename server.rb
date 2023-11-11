require 'sinatra'
require_relative './db.rb'

get '/' do
  'Sinatra example'
end

get '/users/:name?' do
  find_user(DB.get_users, params['name'])
end

def find_user(users, name = nil)
  parse_users = []
  if !name
    users.to_s
  else
    users.filter_map { |user| parse_users << user if  user['name'] == name }
    parse_users.to_s
  end
end

