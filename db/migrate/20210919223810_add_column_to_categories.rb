class AddColumnToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :status, :boolean
  end
end
