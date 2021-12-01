class Question < ApplicationRecord
  belongs_to :family
  has_many :answers
end
