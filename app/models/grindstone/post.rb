class Grindstone::Post < ActiveRecord::Base
  belongs_to :author

  rails_admin do
  end
end