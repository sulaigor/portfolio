class CreateAboutArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|

      t.string :article_name, null: false
      t.text :article_text, null: false
      t.datetime :date

      t.timestamps
    end
  end
end
