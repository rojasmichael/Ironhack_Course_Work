class RemoveColumnFromConcerts < ActiveRecord::Migration
  def change
    remove_column :concerts, :string, :string
    remove_column :concerts, :string, :string
  end
end
