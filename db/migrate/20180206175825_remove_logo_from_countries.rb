class RemoveLogoFromCountries < ActiveRecord::Migration[5.1]
  def change
    remove_column :countries, :logo, :string
  end
end
