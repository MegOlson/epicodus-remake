class AddIdToLessons < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :section_id, :integer
  end
end
