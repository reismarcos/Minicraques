class RemoveCodeFromCountries < ActiveRecord::Migration[5.1]
  def change
    remove_column :countries, :code, :string
  end
end
