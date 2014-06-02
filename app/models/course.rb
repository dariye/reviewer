class Course < ActiveRecord::Base
  validates :course_name, presence: true, uniqueness: true
  validates :course_desc, presence: true
  validates :course_code, presence: true, uniqueness: true
  validates :course_website, presence:true

  has_many :reviews, dependent: :destroy


  def average_rating
    ratings = []
    self.reviews.each do |r|
      ratings << r.rating
    end
    return 0 if ratings.size == 0
    ratings.reduce(:+).to_f / ratings.size
  end

  # It returns the courses whose titles contain one or more words that form the query
  def self.search(query)
    # where(:course_name, query) -> This would return an exact match of the query
    where("course_name = ?", query)
  end

end
