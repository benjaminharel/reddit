class CreateSearchResults < ActiveRecord::Migration
  def change
    create_table :search_results do |t|
      t.integer :search_id
      t.text :data

      t.timestamps
    end
  end
end
