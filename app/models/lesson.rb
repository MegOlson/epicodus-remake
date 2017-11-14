class Lesson < ActiveRecord::Base
  validates :name, :content, :number, :presence => true
  validates :number, uniqueness: true
  belongs_to :sections
  scope :in_section, -> (section_id){ where("section_id = ?", section_id) }
  scope :ordered_by_number, -> { order(number: :asc) }

  def next
    lessons = Lesson.in_section(self.section_id)
    lessons.each do |lesson|
      if lesson.number == (self.number + 1)
        return lesson
      end
    end
  end

end
