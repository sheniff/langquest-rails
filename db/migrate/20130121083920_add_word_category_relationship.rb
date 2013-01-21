class AddWordCategoryRelationship < ActiveRecord::Migration
  def change
    create_table :categories_words, :id => false do |t|
      t.references :category, :null => false
      t.references :word, :null => false
    end
    add_index(:categories_words, [:category_id, :word_id], :unique => true)
  end
end
