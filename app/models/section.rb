class Section < ActiveRecord::Base
  belongs_to :course
  belongs_to :section
  has_many :lessons

  include RankedModel
  ranks :row_order, :with_same => :course_id
end
