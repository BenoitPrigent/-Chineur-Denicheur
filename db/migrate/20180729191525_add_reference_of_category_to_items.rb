class AddReferenceOfCategoryToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :category_id, :integer
    add_foreign_key :items, :categories
  end
end
