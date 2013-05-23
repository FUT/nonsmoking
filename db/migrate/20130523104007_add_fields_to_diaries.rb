class AddFieldsToDiaries < ActiveRecord::Migration
  def change
    add_column :diaries, :smoking_index, :integer, null: false, default: 0
    add_column :diaries, :smoking_dependency, :integer, null: false, default: 0
    add_column :diaries, :fagerstrom, :integer, null: false, default: 0
    add_column :diaries, :spilberg, :integer, null: false, default: 0
    add_column :diaries, :zung, :integer, null: false, default: 0
    add_column :diaries, :previous_experience, :text, default: ''
    add_column :diaries, :previous_fail, :text, default: ''
    add_column :diaries, :failed, :boolean, null: false, default: false
  end
end
