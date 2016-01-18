class CreateInquiries < ActiveRecord::Migration
  def change
    create_table :inquiries do |t|
    	t.string :name
    	t.string :email, null:false
    	t.string :phone
    	t.text :message
      t.timestamps
    end

    add_index :inquiries, :email
  end
end
