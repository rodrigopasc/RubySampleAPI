class CreateCredentials < ActiveRecord::Migration[6.0]
  def change
    create_table :credentials do |t|
      t.string :username, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
