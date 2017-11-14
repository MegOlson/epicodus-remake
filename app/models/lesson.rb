class Lesson < ActiveRecord::Base
  validates :name, :content, :number, :presence => true
end
