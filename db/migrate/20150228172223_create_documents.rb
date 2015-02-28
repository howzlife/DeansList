class CreateDocuments < ActiveRecord::Migration
  def change
    drop_and_create_table :documents do |t|
      t.string :name
      t.string :tags
      t.string :course
      t.string :description
      t.attachment :document

      t.timestamps
    end
  end
end
