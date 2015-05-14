class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :seeker_id
      t.integer :helper_id
      t.string :url
      t.text :context

      t.timestamps
    end
  end
end
