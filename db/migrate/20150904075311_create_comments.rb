class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :message
    	t.integer :user_id
    	t.integer :link_id

      t.timestamps null: false
    end
  end
end
