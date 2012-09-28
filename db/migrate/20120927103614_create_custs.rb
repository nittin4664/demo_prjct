class CreateCusts < ActiveRecord::Migration
  def change
    create_table :custs do |t|
      t.string :name
      t.string :email
      t.string :address

      t.timestamps
    end
  end
end
