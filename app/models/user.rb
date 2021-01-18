class User < ApplicationRecord
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
                validates :address_number,format: { with: /\A\d{3}[-]\d{4}\z/ }
                validates :city
                validates :address
                validates :staff_id
                validates :gender_id,  numericality: { other_than: 0 }
        end
        def self.search(search)
          if search != ""
            User.where('last_name_katakana LIKE(?)', "%#{search}%")
          else
            User.all
          end
        end
end
