class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :type
      t.DateTime :posted
      t.string :description
      t.array :tags
      t.integer :rating

      t.timestamps
    end
  end
end
