class CreateFactories < ActiveRecord::Migration[5.1]
  def change
    create_table :factories do |t|
      t.string :name
      t.attachment :logo

      t.timestamps
    end
  end
end
