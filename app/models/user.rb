class User < ApplicationRecord
  has_many :questions, dependent: :destroy

  has_many :answers, dependent: :destroy

  has_many :likes, dependent: :destroy
end

