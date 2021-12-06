class Family < ApplicationRecord

  has_many :courses, dependent: :destroy
  has_many :questions, dependent: :destroy
  has_one_attached :photo

end
