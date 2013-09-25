Token Twitter App
==========

A wee little [Sinatra](http://www.sinatrarb.com) + [OmniAuth](https://github.com/intridea/omniauth/wiki) application to get you started on your brilliant new Twitter App! This will give you a valid Token to use with the Twitter API. [Twitter Gem](http://rdoc.info/gems/twitter) makes thing easy!
 
Setup
-----

In the [Twitter Developers Portal](https://dev.twitter.com) you need to create an app and get the credentials required.

Create a secrets.rb file and fill it with the following content which you received via the Twitter Developer Portal

	APP_NAME = 'Nameless APP'
	DEV_DB_NAME = 'somedb'	
	BASE_URL = 'https://yourappnamehere.herokuapp.com'
	TWITTER_BASE_URL = 'https://api.twitter.com'
	REGISTERED_REDIRECT_URI = BASE_URL + 'oauth2/callback'

	CONSUMER_KEY = '3.141592653589793238462643'
	CONSUMER_SECRET = '3.141592653589793238462643'


Basic Usage
-----------

Run the Sinatra app locally or deploy to heroku. User can then hit the page and authorize, tokens are stored.


TODO
----

* Encrypt user data via https://github.com/attr-encrypted/attr_encrypted


LICENSE
-------

Copyright (c) 2010 [MJFreshyfresh](http://mjfreshyfresh.com/about) and
distributed under the MIT license.