module Helper
  extend self

  def print_divider(message : String?, dash_count : Number = 60)
    puts
    puts "-" * dash_count

    if message
      puts message
      puts "-" * dash_count
    end

    puts
  end
end
