class Grindstone::Post < ActiveRecord::Base
  belongs_to :grindstone_author

  rails_admin do
  end
end