class IAndEStatement < ApplicationRecord
  belongs_to :user
  has_many :incomes, dependent: :destroy
  accepts_nested_attributes_for :incomes, reject_if: :all_blank, allow_destroy: false
  has_many :expenditures, dependent: :destroy
  accepts_nested_attributes_for :expenditures, reject_if: :all_blank, allow_destroy: false
end
