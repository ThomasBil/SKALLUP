class Question < ApplicationRecord
  belongs_to :family
  has_many :answers, dependent: :destroy
end
