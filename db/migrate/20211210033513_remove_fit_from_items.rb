class RemoveFitFromItems < ActiveRecord::Migration[6.1]
  def change
    remove_column :items, :fit, :string
  end
end
