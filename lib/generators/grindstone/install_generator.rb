require 'rails/generators/base'

module Grindstone
  module Generators
    class InstallGenerator < Rails::Generators::Bases
      desc "Creates a Grindstone initializer to your application."


      def copy_initializer
        template 'test.rb', 'config/initializers/grindstone.rb'
      end
    end
  end
end