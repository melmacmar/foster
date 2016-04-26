class Course < ActiveRecord::Base
  belongs_to :user
  has_many :sections

  validates :title, presence: true
  validates :description, presence: true
  validates :cost, presence: true, numericality: {greater_than_or_equal_to: 0}
end
class User < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
class AddImageToUsers < ActiveRecord::Migration
  def change
    add_column :courses, :image, :string
  end
end