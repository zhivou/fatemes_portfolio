class CreateTeachings < ActiveRecord::Migration[6.0]
  def change
    create_table :teachings do |t|
      t.text :title

      t.timestamps
    end
  end
end
