class Track < ApplicationRecord
    validates :name, presence: true
    validates :url, presence: true
    validates :credits, presence: true
    validates :available, presence: true
end
