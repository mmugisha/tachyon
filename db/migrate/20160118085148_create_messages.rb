class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.string :name
    	t.string :email, null:false
    	t.text :message

      t.timestamps
    end
  end
end