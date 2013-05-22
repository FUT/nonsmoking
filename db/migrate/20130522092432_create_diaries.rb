class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.integer :user_id

      t.integer :state, default: 0, null: false
      t.timestamps
    end
  end
end
