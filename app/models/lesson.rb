class Lesson < ActiveRecord::Base
  validates :name, :content, :number, :presence => true
  validates :number, uniqueness: true
  belongs_to :sections

  def next
    lessons = Lesson.all
    lessons.each do |lesson|
      if lesson.number == (self.number + 1) && (lesson.section_id == self.section_id)
        return lesson
      end
    end
  end
end
