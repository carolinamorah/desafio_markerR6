class AddReferenceToCategory < ActiveRecord::Migration[6.1]
  def change
    add_reference :categories, :category
  end
end
