class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string :name
      t.string :branch
      t.text :address

      t.timestamps
    end
  end
end
