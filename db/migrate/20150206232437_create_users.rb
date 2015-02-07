class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :location
      t.integer :expert_id
      t.integer :customer_id

      t.timestamps
    end
  end
end
