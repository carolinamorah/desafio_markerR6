class AddReferenceToBookmark < ActiveRecord::Migration[6.1]
  def change
    add_reference :bookmarks, :type
    add_reference :bookmarks, :category
  end
end
