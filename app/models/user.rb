class User < ActiveRecord::Base
  has_many :friendships, foreign_key: :user_id, class_name: "Friendship"
  has_many :friends, through: :friendships

  def self.login
    print "Login: "
    input = $stdin.gets.chomp.downcase
    @current_user = User.find_or_create_by(username: input)
    puts "wassup #{@current_user.username}"
    @current_user
  end

  def self.all_users
    User.all.map do |user|
      user.username
    end
  end

  def add_friend(friend)
    Friendship.find_or_create_by(user_id: self.id, friend_id: friend.id)
  end
end
