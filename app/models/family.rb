class Family < ApplicationRecord
  has_many :courses, :questions
end
