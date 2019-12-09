class RemoveBodyFromService < ActiveRecord::Migration[6.0]
  def change
    remove_column :services, :body, :string
  end
end
