class User
  def email : String
    "hello@luckycasts.com"
  end

  def username : String | Nil
    if Random.new.next_bool
      nil
    else
      "luckycasts"
    end
  end
end
