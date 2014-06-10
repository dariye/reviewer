class Review < ActiveRecord::Base
  belongs_to :course

  validates :body, presence: true
  validates :rating, inclusion: { in: [1,5] },
    numericality: { only_integer: true }, presence: true
  default_scope -> { order('created_at DESC') }
end
