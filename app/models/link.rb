class Link < ApplicationRecord
  validates :short, presence: true
  validates :long,  presence: true
end
