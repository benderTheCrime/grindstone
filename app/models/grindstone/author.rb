class Grindstone::Author < ActiveRecord::Base
  has_many :grindstone_posts

  rails_admin do
  end
end