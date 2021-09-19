class RemoveColumnToCategories < ActiveRecord::Migration[6.1]
  def change
    remove_column :categories, :status, :string
  end
end
