## Grindstone
Build a custom blog in seconds!

### Usage
Install the Grindstone gem:
```
gem install gemrat
gemrat grindstone
gem install grindstone
```
You must also run the Rails Admin installation generator:
```
Run rails g rails_admin:install
```
Then perform a migration to add the blog models:
```
bundle exec rake db:migrate
```

If you want to paginate, just add the following to your gemfile:
```
gem 'will_paginate', '3.0.7'
```

### Authentication
Authentication is up to you, if you would prefer to install Devise and CanCanCan #(links), there is an optional setup for author and user association.
Just run the following in your application:
```
rails g rails_admin:install
```
and then follow the steps here: [Rails Admin/CanCanCan](https://github.com/sferik/rails_admin/wiki/Cancancan)