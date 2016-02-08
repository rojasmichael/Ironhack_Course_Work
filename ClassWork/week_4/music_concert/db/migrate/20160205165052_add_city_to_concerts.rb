class AddCityToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :city, :string
    add_column :concerts, :string, :string
  end
end
