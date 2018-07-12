class AddLogoToCountries < ActiveRecord::Migration[5.1]
  def change
    add_column :countries, :logo, :string
  end
end
