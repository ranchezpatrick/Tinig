class Artist < ApplicationRecord
    validates :name, presence: true
    validates :permalink, presence: true
    validates :bio, presence: true
    validates :formed_at, presence: true
    validates :verified, presence: true
    validates :verified_at, presence: true
    validates :avatr_url, presence: true
    validates :cover_photo_url, presence: true
end
