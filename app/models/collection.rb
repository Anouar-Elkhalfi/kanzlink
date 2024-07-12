class Collection < ApplicationRecord
  has_many :links, dependent: :destroy
  validates :name, presence: true
end
