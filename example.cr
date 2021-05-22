require "./helper"
require "./user"

def show_random_sampling(count : Number = 5)
  Helper.print_divider(message: "Here are #{count} invocations of `User#username`:")

  user = User.new

  count.times do
    puts user.username || "[Nil]"
  end
end

show_random_sampling

def reversed_user_name(user : User)
  Helper.print_divider(message: "Let's print the User's username or email in reverse:")

  if user.username
    puts user.username.reverse
  else
    puts user.email.reverse
  end
end

user = User.new
reversed_user_name(user)
