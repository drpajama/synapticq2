class Article < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	validates :category, presence: true
	validates :summary, presence: true
	validates :qtype, presence: true
	validates :item, presence: true
	validates :choice, presence: true
end
