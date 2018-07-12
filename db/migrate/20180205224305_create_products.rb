class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :nationality_id
      t.integer :team_id
      t.integer :serie_id
      t.float :price
      t.integer :code
      t.string :link
      t.boolean :box
      t.integer :status
      t.integer :line_id
      t.integer :number
      t.attachment :picture
      t.text :bio
      t.integer :factory_id

      t.timestamps
    end
  end
end
