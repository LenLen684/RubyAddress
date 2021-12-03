class Address < ApplicationRecord
    validates :name, presence: true
    validates :address, presence: true
    validates :email, presence: true
    validates :phone, presence: true
end
