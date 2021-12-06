class Course < ApplicationRecord
  belongs_to :family
  has_many :progresses, dependent: :destroy
  has_one_attached :photo

end
