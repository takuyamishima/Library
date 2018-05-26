class Contact < ApplicationRecord
    validates :content,  presence: true
    has_many :contactbooks, dependent: :destroy
end
