class User < ApplicationRecord
  validates :name, presence: true, length: {maximum: 50}
  #バリデーションの正規表現の定数値
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.\d{1}[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
              format: {with: VALID_EMAIL_REGEX}
end
