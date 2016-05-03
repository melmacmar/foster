class Section < ActiveRecord::Base
  belongs_to :course
  belongs_to :section
  has_many :lessons
end
