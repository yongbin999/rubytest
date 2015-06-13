tutorial site

http://guides.rubyonrails.org/getting_started.html


import and export databae from server to local
https://devcenter.heroku.com/articles/heroku-postgres-import-export

instructions
heroku pgbackups:capture
$ curl -o latest.dump `heroku pgbackups:url`
$ pg_restore --verbose --clean --no-acl --no-owner -h localhost -U xxxxuser -d xxxxxdb latest.dump