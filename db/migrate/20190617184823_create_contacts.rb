class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|

      t.string :url, null: false
      t.string :social_name, null: false
      t.string :social_icon, null: false
      t.timestamps
    end
  end
end
