class ChangeDatatype < ActiveRecord::Migration
def up
    change_table :books do |t|
      t.change :price, :string
    end
  end
 
  def down
    change_table :books do |t|
      t.change :price, :integer
    end
  end
  end
