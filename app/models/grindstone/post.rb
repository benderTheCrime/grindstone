class Grindstone::Post < ActiveRecord::Base
  belongs_to :author,
    :class_name => 'Grindstone::Author',
    :primary_key => 'id',
    :foreign_key => 'grindstone_author_id'
end