Chapter.destroy_all
Section.destroy_all
Lesson.destroy_all

10.times do |index|
  Chapter.create!(name: Faker::Coffee.blend_name).sections.create!(name: Faker::HarryPotter.quote,
                    chapter_id: Faker::Number.between(1, 10)).lessons.create!(name: Faker::HeyArnold.character,
                    content: Faker::HeyArnold.quote,
                    section_id: Faker::Number.between(1,10),
                    number: Faker::Number.between(60,75))
end

p "Created #{Chapter.count} chapters"
p "Created #{Section.count} sections"
p "Created #{Lesson.count} lessons"




# 10.times do |index|
#   Section.create!(name: Faker::HarryPotter.quote,
#                     chapter_id: Faker::Number.between(1, 10))
# end
#
