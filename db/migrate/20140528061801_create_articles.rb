class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :item
      t.string :summary
      t.string :qtype
      t.string :choice
      t.string :answer
      t.text :explaination
      t.string :status
      t.string :category
      t.string :source
      t.string :reference

      t.timestamps
    end
  end
end
