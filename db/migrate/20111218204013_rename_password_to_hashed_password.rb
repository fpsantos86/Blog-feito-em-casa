class RenamePasswordToHashedPassword < ActiveRecord::Migration
  def up
    rename_column :users, :password, :hashed_password
  end

  def down
    rename_column :users, :hashed_password, :password
  end
end
