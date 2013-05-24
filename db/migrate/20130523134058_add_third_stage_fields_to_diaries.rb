class AddThirdStageFieldsToDiaries < ActiveRecord::Migration
  def change
    add_column :diaries, :strategy, :text
  end
end
