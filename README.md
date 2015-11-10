

## Usage
Install the Grindstone gem:
```
gem install grindstone
```
Include it in your Gemfile if you so desire (I recommend gemrat) # Link to Gemrat, then generate migrations:
```
bundle exec rake grindstone:create_migrations
bundle exec rake db:migrate
```
Configure the Grindstone routes:
```
mount Grindstone::Engine => "/grindstone"
```