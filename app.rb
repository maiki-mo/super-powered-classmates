require 'sinatra'
require 'sinatra/reloader'
require './classmates.rb'

mike = Classmates.new("Mike", "Direct Flame Thrower Eyes")
cat = Classmates.new("Cat", "Shoot Bacon Flavored Acid Vomit")
mada = Classmates.new("Mada", "Fiercely Retract Nostrils")

NAME = "Mike"

NAMES = {
    "Edward Elric" => "Alchemist",
    "Ronnie Digital" => "HTML Master",
    "Yorvi" => "The Dominican",
    "Maria" => "The Edgecase Queen"
}

get '/' do
    "Hello World I am a robot.  I love robots.  I love robots."
end

get '/sei' do
    "I am a custom text of my own choosing"
end

get '/my_name' do
    "<h1>My friends are #{NAMES.keys}</h1>
    <h3>Their nicknames are:</h3>
    <ul>
        <li>#{NAMES["Edward Elric"]}
        <li>#{NAMES["Ronnie Digital"]}
        <li>#{NAMES["Yorvi"]}
        <li>#{NAMES["Maria"]}
    </ul>
    "
end

get '/mike' do
    mike.i_have_the_power!
end

get '/cat' do
    cat.i_have_the_power!
end

get '/mada' do
    mada.i_have_the_power!
end