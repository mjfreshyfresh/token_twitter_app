require 'sinatra'

get '/' do
  erubis :index
end

get '/auth/twitter/callback' do
  creds = env['omniauth.auth']['credentials']    
  Token.create(:secret=>creds['secret'].strip, :token=>creds['token'].strip, :deets=>creds)
  erubis :installed
end


# TODO: Wrap this w/some security
# get '/mytokens' do
#   tokens = Token.all
#   s = "Tokens: #{tokens.size}<br>"
#   tokens.each do | token |
#     s << "Token.create :token=>'#{token.token}', :secret=> '#{token.secret}'<br>"    
#   end
#   s
# end