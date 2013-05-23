class AddPreparationEndedToDiaries < ActiveRecord::Migration
  def change
    add_column :diaries, :preparation_ended, :datetime
  end
end
