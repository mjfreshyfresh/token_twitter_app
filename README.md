Token Twitter App
==========

A wee little [Sinatra](http://www.sinatrarb.com) + [OmniAuth](https://github.com/intridea/omniauth/wiki) application to get you started on your brilliant new Twitter App! This will give you a valid Token to use with the Twitter API. [Twitter Gem](http://rdoc.info/gems/twitter) makes thing easy!
 
Setup
-----

In the [Twitter Developers Portal](https://dev.twitter.com) you need to create an app and get the credentials required.

Create a .env file for local development and fill it with the following content which you received via the Twitter Developer Portal. Deploying on Heroku you'll need to follow the [directions for config-vars](https://devcenter.heroku.com/articles/config-vars)

	APP_NAME =My Token Twitter App
	BASE_URL =https://myapp.herokuapp.com
	CONSUMER_KEY=gI12312jkfldfjsldkfjksdf
	CONSUMER_SECRET=dI12312jkfldfjsldkfjksdf
	MY_TOKEN_KEY=sdfomerewsdfdsrser
	
Some handy heroku commands:

	heroku config:set  APP_NAME=TokenApp
 	heroku addons:add heroku-postgresql:dev
	heroku git:remote -a falling-wind-1624

Make sure the correct db config is used in the config.ru HEROKU_POSTGRESQL_MAROON_URL 

Basic Usage
-----------

Run the Sinatra app locally or deploy to heroku. User can then hit the page and authorize, tokens are stored.


TODO
----

* Encrypt user data via https://github.com/attr-encrypted/attr_encrypted
* Require auth to view the /tokens route


LICENSE
-------

Copyright (c) 2010 [MJFreshyfresh](http://mjfreshyfresh.com/about) and
distributed under the MIT license.