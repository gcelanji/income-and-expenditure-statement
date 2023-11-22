class IAndEStatement < ApplicationRecord
  belongs_to :user
  has_many :incomes, dependent: :destroy
  has_many :expenditures, dependent: :destroy
end
