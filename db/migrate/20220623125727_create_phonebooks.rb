class CreatePhonebooks < ActiveRecord::Migration[7.0]
  def change
    create_table :phonebooks do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :twitter
      t.string :instagram
      t.string :irc_hangle
      t.string :discord

      t.timestamps
    end
  end
end
