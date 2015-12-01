class Grindstone::Author < ActiveRecord::Base
  has_many :posts,
    :class_name => 'Grindstone::Post',
    :primary_key => 'id',
    :foreign_key => 'grindstone_author_id'
end