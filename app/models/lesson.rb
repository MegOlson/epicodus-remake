class Lesson < ActiveRecord::Base
  validates :name, :content, :number, :presence => true
  validates :number, uniqueness: true
end
