class CreateSpaceships < ActiveRecord::Migration[5.2]
  def change
    create_table :spaceships do |t|
      t.string :make
      t.string :shipClass
      t.integer :lasers
      t.integer :shields

      t.timestamps
    end
  end
end
