class AddAnotherFieldsToDiaries < ActiveRecord::Migration
  def change
    add_column :diaries, :smoke_years, :integer
    add_column :diaries, :smoke_months, :integer
  end
end
