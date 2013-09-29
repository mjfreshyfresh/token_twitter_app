require 'sinatra'

get '/' do
  erubis :index
end

get '/auth/twitter/callback' do
  creds = env['omniauth.auth']['credentials']    
  Token.create(:secret=>creds['secret'].strip, :token=>creds['token'].strip, :deets=>creds)
  erubis :installed
end


# TODO: Improve this
get '/mytokens/:mytokenkey' do
  s = 'Tokens<br>'
  if ENV['MY_TOKEN_KEY'] == params[:mytokenkey]
    tokens = Token.all
    s << "Tokens: #{tokens.size}<br>"
    tokens.each do | token |
      s << "Token.create :token=>'#{token.token}', :secret=> '#{token.secret}'<br>"    
    end
  end
  s
end