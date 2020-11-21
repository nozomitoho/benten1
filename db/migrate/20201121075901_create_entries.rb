class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.integer :id
      t.refarence :user
      t.refarence :room

      t.timestamps
    end
  end
end
