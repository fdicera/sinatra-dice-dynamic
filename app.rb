require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:zebra/:dog") do
  @number_of_dice = params.fetch("zebra").to_i
  @die_nums = params.fetch("dog").to_i

  @rolls = []

  @number_of_dice.times do
    die = rand(1..@die_nums)

    @rolls.push(die)
  end
  
  erb(:flexible)
end
