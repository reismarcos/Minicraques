class RemoveFlagFromCountries < ActiveRecord::Migration[5.1]
  def change
    remove_column :countries, :flag, :attachment
  end
end
