class RemoveSomeAttributesFromArticles < ActiveRecord::Migration
  def self.up
    remove_column :articles, :email
    remove_column :articles, :encrypted_password
    remove_column :articles, :reset_password_token
    remove_column :articles, :reset_password_sent_at
    remove_column :articles, :remember_created_at
    remove_column :articles, :sign_in_count
    remove_column :articles, :current_sign_in_at
    remove_column :articles, :last_sign_in_at
    remove_column :articles, :current_sign_in_ip
    remove_column :articles, :last_sign_in_ip
  end
  def self.down
    add_column :articles, :email, :string
    add_column :articles, :encrypted_password, :string
    add_column :articles, :reset_password_token, :string
    add_column :articles, :reset_password_sent_at, :datetime
    add_column :articles, :remember_created_at, :datetime
    add_column :articles, :sign_in_count, :integer
    add_column :articles, :current_sign_in_at, :datetime
    add_column :articles, :last_sign_in_at, :datetime
    add_column :articles, :current_sign_in_ip, :string
    add_column :articles, :last_sign_in_ip, :string
  end
end
