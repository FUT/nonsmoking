class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.integer :user_id
      t.string :state

      t.timestamps
    end
  end
end
