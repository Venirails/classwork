class CreateLobours < ActiveRecord::Migration
  def change
    create_table :lobours do |t|
      t.string :name
      t.integer :age
      t.string :emp_no

      t.timestamps
    end
  end
end
