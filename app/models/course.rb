class Course < ApplicationRecord
  belongs_to :user
  enum category: {Literature:0, Math:1, English:2, Science:3, Society:4}
  enum currency: {TWD:0, USD:1, EUR:2, GBP:3, HKD:4, MYR:5}
 

  # include AASM

  # aasm column: :state do
  #   state :running, initial: true
  #   state :expired, :disabled

  #   event :expire do
  #     transitions from: :running, to: :expired 
  #   end

  #   event :disable do
  #     transitions from: [:running, :expired], to: :disabled
  #   end

  #   event :run do
  #     transitions from: [:disabled, :expired], to: :running
  #   end
  # end
end