

## Usage
Install the Grindstone gem:
```
gem install grindstone
```
Include it in your Gemfile if you so desire (I recommend gemrat) Gemrat #(links), then generate migrations:
```
bundle exec rake grindstone:create_migrations
bundle exec rake db:migrate
```
Configure the Grindstone routes:
```
mount Grindstone::Engine => "/grindstone"
```

You must also run the Rails Admin installation generator:
```
Run rails g rails_admin:install
```

Auth is up to you, if you would prefer to install Devise and CanCanCan #(links), there is an optional setup for author and user association