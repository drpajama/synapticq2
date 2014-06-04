class AddQuestionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :question, :text
  end
end
