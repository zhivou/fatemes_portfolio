class CreateScholars < ActiveRecord::Migration[6.0]
  def change
    create_table :scholars do |t|
      t.string :publications
      t.string :title
      t.string :key_words
      t.string :total_citations
      t.string :h_index
      t.string :i10_index

      t.timestamps
    end
  end
end
