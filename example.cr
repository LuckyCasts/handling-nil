require "./helper"
require "./user"

# Our `User` returns either `Nil` or a `String` for their `#username`
#
# Calls the `#username` method a few times to show the random nature of the response.
def show_random_sampling(count : Number = 5)
  Helper.print_divider(message: "Here are #{count} invocations of `User#username`:")

  user = User.new

  count.times do
    puts user.username || "[Nil]"
  end
end

show_random_sampling

# This looks correct, but fails to compile!
def bad_reversed_user_name(user : User)
  Helper.print_divider(message: "Let's print the User's username or email in reverse:")

  if user.username
    puts user.username.reverse
  else
    puts user.email.reverse
  end
end

# This is correct and compiles!
def good_reversed_user_name(user : User)
  Helper.print_divider(message: "Let's print the User's username or email in reverse:")

  if (username = user.username)
    puts username.reverse
  else
    puts user.email.reverse
  end
end

user = User.new
bad_reversed_user_name(user)
good_reversed_user_name(user)
