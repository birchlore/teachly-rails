class CreateExperts < ActiveRecord::Migration
  def change
    create_table :experts do |t|
      t.string :bio
      t.text :skills
      t.integer :hourly_rate
      t.decimal :rating
      t.string :avatar
      t.float :plebian_score
      t.decimal :hours_worked
      t.integer :user_id

      t.timestamps
    end
  end
end
