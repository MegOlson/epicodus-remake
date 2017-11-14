class Section < ActiveRecord::Base
  validates :name, :presence => true
  has_many :lessons
  belongs_to :chapters
end
