class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :summary
      t.references :users

      t.timestamps
    end
  end
end
