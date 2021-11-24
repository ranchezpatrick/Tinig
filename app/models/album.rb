class Album < ApplicationRecord
    validates :name, presence: true
    validates :released, presence: true
    validates :released_at, presence: true
    validates :length, presence: true
    validates :cover_art_url, presence: true
    validates :kind, presence: true
end
