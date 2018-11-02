class Task < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :day, presence: true,
                    length: { minimum: 3 }
  validates :duty, presence: true,
                    length: { minimum: 5 }
  
end
