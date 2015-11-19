

## Usage
Install the Grindstone gem:
```
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

Auth is up to you, if you would prefer to install Devise and CanCanCan #(links), there is an optional setup for author and user association