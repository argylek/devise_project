# frozen_string_literal: true

class Food < ApplicationRecord
  belongs_to :user

  def self.sum_calories(user)
    user.foods.sum(:calories)
  end

  def self.sum_weight(user)
    user.foods.sum(:weight)
  end
end
