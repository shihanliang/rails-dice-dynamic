class DiceController < ApplicationController
  def home
    # just renders home view
  end

  def roll
    @num_dice = params[:num_dice].to_i
    @num_sides = params[:num_sides].to_i

    @rolls = []

    @num_dice.times do
      @rolls.push(rand(1..@num_sides))
    end
  end
end
