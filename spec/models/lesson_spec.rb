require 'rails_helper'

describe Lesson do
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
  it { should validate_presence_of :number }

  context '#next' do
    it 'returns the lesson with the next-highest number than the current lesson' do
      current_lesson = Lesson.create({:name => 'lesson1', :content => 'stuff', :number => 1, :section_id => 1})
      next_lesson = Lesson.create({:name => 'lesson2', :content => 'stuff', :number => 2, :section_id => 1})
      expect(current_lesson.next).to eq next_lesson
    end
  end
end
