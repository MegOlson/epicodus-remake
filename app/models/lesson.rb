class Lesson < ActiveRecord::Base
  validates :name, :content, :number, :presence => true
  validates :number, uniqueness: true
  belongs_to :sections
  
  def next
    lessons = Lesson.all
    lessons.each do |lesson|
      if lesson.number == (self.number + 1)
        return lesson
      end
    end
  end
end
