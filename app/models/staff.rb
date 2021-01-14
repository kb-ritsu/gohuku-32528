class Staff < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :users
        with_options presence:true do
         validates :name
         validates :password
        end
end
