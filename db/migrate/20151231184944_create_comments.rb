class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.string :comment, null: false
    end
  end
end
