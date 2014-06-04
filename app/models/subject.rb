class Subject < ActiveRecord::Base
  has_many :articles, dependent: :nullify
end
