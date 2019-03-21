class ChangeColumnNameUser < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :userid, :user_id
  end
end
