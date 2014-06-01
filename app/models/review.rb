class Review < ActiveRecord::Base
  belongs_to :course
  default_scope -> { order('created_at DESC') }
end
