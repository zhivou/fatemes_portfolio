class CreatePublications < ActiveRecord::Migration[6.0]
  def change
    create_table :publications do |t|
      t.string :name
      t.string :publisher
      t.references :research, null: false, foreign_key: true

      t.timestamps
    end
  end
end
