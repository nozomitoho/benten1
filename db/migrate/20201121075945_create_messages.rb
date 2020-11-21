class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.integer :id
      t.refarence :user
      t.refarence :room
      t.text :message

      t.timestamps
    end
  end
end
