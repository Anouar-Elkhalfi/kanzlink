class Link < ApplicationRecord
  belongs_to :user
  belongs_to :collection
  validates :title, :url, :description, :collection_id, presence: true
end
