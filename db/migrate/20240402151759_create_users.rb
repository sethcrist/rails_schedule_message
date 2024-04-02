class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
# line 4: to create a user there must be an email address. also need a validates on user.rb