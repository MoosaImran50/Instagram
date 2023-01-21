class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :account
      t.references :post
      t.timestamps
    end
  end
end
