class Article < ActiveRecord::Base
  belongs_to :subject
  has_many :choice_items, dependent: :destroy

  accepts_nested_attributes_for :choice_items, reject_if: :new_record?, allow_destroy: true

	validates :category, presence: true
	validates :summary, presence: true
	validates :qtype, presence: true
	validates :question, presence: true
end
