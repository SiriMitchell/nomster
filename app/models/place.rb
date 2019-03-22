class Place < ApplicationRecord
  belongs_to :current_user
  validates :name, presence: true, length: {minimum:3}
end

class Place < ApplicationRecord
  belongs_to :current_user
  validates :address, presence: true
end