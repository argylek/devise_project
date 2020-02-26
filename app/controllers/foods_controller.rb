# frozen_string_literal: true

class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :destroy, :update]
  def index
    @foods = current_user.foods
    @calories = Food.sum_calories(current_user)
    @weight = Food.sum_weight(current_user)
    # binding.pry
  end

  def new
    @food = Food.new
  end

  def create
    @food = current_user.foods.new(foods_params)
    if @food.save
      redirect_to foods_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @food.update(foods_params)
      redirect_to foods_path
    else
      render :edit
    end
  end
  def show; end

  def destroy
    @food.destroy
    redirect_to foods_path
  end

  private

  def set_food
    @food = current_user.foods.find(params[:id])
  end

  def foods_params
    params.require(:food).permit(:name, :weight, :calories, :ingredient, :bestby)
  end
end
