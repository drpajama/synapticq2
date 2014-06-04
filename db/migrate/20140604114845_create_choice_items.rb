class CreateChoiceItems < ActiveRecord::Migration
  def change
    create_table :choice_items do |t|
      t.references :article, index: true
      t.text :item, null: false
      t.boolean :is_correct, default: false

      t.timestamps
    end
  end
end
