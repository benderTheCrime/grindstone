class Grindstone::Author < ActiveRecord::Base
  has_many :posts, :class_name => 'Grindstone::Post'

  rails_admin do
  end
end