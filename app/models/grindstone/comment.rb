class Grindstone::Comment < ActiveRecord::Base
  belongs_to :grindstone_post,
    :class_name => 'Grindstone::Post',
    :primary_key => 'id',
    :foreign_key => 'grindstone_post_id'
end