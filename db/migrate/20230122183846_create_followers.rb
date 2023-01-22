class CreateFollowers < ActiveRecord::Migration[7.0]
  def change
    create_table :followers do |t|
      t.references :follower, referneces: :accounts
      t.references :following, referneces: :accounts
      t.timestamps
    end
  end
end
