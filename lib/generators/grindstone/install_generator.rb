require 'rails/generators'
require File.expand_path '../utils', __FILE__

module Grindstone
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path '../templates', __FILE__
    include Generators::Utils::InstanceMethods

    argument :_namespace, type: :string, required: false,
      desc: 'Grindstone url namespace'
    desc 'Creates a Grindstone initializer to your application.'

    def install
      namespace = ask_for 'Where do you want to mount Grindstone?', 'blog',
        _namespace
      route "mount Grindstone::Engine => '/#{namespace}', as: 'grindstone'"
      template 'initializer.erb', 'config/initializers/grindstone.rb'
      template '20090106022023_create_authors.erb',
        'db/migrate/20090106022023_create_authors.rb'
      template '20090106022024_create_posts.erb',
        'db/migrate/20090106022023_create_posts.rb'
      template '20090106022025_create_comments.erb',
        'db/migrate/20090106022025_create_comments.rb'
    end
  end
end