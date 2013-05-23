class AddSecondStageFieldsToDiaries < ActiveRecord::Migration
  def change
    add_column :diaries, :aim, :text
    add_column :diaries, :smoking_bad, :text
    add_column :diaries, :what_if_no_smoking, :text
    add_column :diaries, :why_it_brings_satisfaction, :text
    add_column :diaries, :stereotype_cause, :text
    add_column :diaries, :stereotype_denial, :text
    add_column :diaries, :hobby_no_smoking, :text
  end
end
