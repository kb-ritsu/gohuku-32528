class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :staff
  has_many :sizes
      extend ActiveHash::Associations::ActiveRecordExtensions
         belongs_to :gender
       
        with_options presence:true do
                validates :first_name,format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "is invalid. Input full-width characters."}
                validates :last_name,format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "is invalid. Input full-width characters."}
                validates :first_name_katakana, format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,message: "全角カタカナのみで入力して下さい"}
                validates :last_name_katakana, format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/,message: "全角カタカナのみで入力して下さい"}
                validates :birthday
                validates :phone_number, format: {with: /\d{9,11}/}, length: {maximum: 11}
                validates :telephone_number, format: {with: /\d{9,11}/}, length: {maximum: 11}
                validates :address_number,format: { with: /\A\d{3}[-]\d{4}\z/ }
                validates :city
                validates :address
                validates :staff_id
                validates :detail
                validates :gender,  numericality: { other_than: 0 }
        end
      
end
