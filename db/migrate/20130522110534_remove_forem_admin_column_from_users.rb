class RemoveForemAdminColumnFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :forem_admin
  end

  def down
    add_column user_class, :forem_admin, :boolean, :default => false
  end
end
