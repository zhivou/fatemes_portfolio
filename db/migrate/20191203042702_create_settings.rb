class CreateSettings < ActiveRecord::Migration[6.0]
  def change
    create_table :settings do |t|
      t.json :data
      t.boolean :current

      t.timestamps
    end
  end
end
