class AddSubjectIdToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :subject_id, :integer
    add_index :articles, :subject_id
  end
end
