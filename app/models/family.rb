class Family < ApplicationRecord
  has_many :courses,
  has_many :questions,
end
