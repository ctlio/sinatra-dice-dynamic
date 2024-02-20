require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/dice/:input1/:input2") do
  @num_dice = params.fetch("input1").to_i
  @sides = params.fetch("input2").to_i
  @rolls = []

  @num_dice.times do
   die = rand(1..@sides)

   @rolls.push(die)

   
  end
  erb(:flexible)
end
