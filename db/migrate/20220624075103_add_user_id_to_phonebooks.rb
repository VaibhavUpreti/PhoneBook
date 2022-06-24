class AddUserIdToPhonebooks < ActiveRecord::Migration[7.0]
  def change
    add_column :phonebooks, :user_id, :integer
    add_index :phonebooks, :user_id
  end
end
