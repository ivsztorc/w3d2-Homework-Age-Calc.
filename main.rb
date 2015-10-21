require 'pry-byebug'
require 'sinatra'
require 'sinatra/contrib/all' if development?

get '/home' do
  erb :home
end

# get '/age_calculator' do
#   erb :age_calculate

#   puts "What is the person's date of birth?
#   First give the year (YYYY):"
#   year = gets.chomp.to_i
#   puts "Now the month (MM):"
#   month = gets.chomp.to_i
#   puts "Now the day (DD):"
#   day = gets.chomp.to_i

#   unless (Date.valid_date?(year,month,day) && (Date.new(year,month,day)<= Date.today))  
#     invalid_input                                                                       
#     calculate_age_menu                                                                           
#   end
#   date_of_birth = Date.new(year,month,day)                                             
#   answer(how_old(date_of_birth))
# end


get '/calculate' do
  @date_of_birth = params[:date_of_birth].to_i
  @operator = params[:operator]


  