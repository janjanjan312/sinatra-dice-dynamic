require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:zebra/:giraffe") do
  @num_dice = params.fetch("zebra").to_i
  @num2 = params.fetch("giraffe").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@num2)

    @rolls.push(die)
  end

  erb(:flexible)
end
