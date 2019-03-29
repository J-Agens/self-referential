require_relative '../config/environment.rb'

def options
  puts "1 see all users"
  puts "2 add a friend"
  input = $stdin.gets.chomp.to_i

  if input == 1
    puts User.all_users
  elsif input == 2
    puts "what friend would you like to add?"
    answer = gets.chomp.downcase
    @current_user.add_friend(answer)
  else

  end
end


@current_user = User.login
options
