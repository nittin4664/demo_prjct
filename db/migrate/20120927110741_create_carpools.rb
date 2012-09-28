class CreateCarpools < ActiveRecord::Migration
  def change
    create_table :carpools do |t|
      t.integer :user_id
      t.string :to
      t.string :from

      t.timestamps
    end
  end
end
