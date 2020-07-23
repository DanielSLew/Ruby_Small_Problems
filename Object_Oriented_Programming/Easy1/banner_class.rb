# incomplete class for constructing boxed banners.

class Banner
  def initialize(message, banner_width=0)
    @message = message
    @banner_width = set_banner(banner_width)
  end

  def to_s
    [horizontal_rule, empty_line, message_line, empty_line, horizontal_rule].join("\n")
  end

  private

  def set_banner(banner_size)
    return 2 if @message.size == 0
    case banner_size
    when 0     then (@message.size > 76 ? 78 : @message.size)
    when 0..75 then banner_size
    else            78
    end
  end

  def horizontal_rule
    "+#{'-' * @banner_width}+"
  end

  def empty_line
    "|#{' ' * @banner_width}|"
  end

  def split_message(message)
    message_arr = []
    until message.size == 0
      message_arr << message.slice!(0..@banner_width-3)
    end
    message_arr
  end

  def message_line
    return "|  |" if @message.empty? 
    split_message(@message.clone).map do |message|
      "| #{message.center(@banner_width-2)} |"
    end
  end
end

# complete this class so that the test cases shown below work as intended
# you are free to add any methods or instance variables you need
# do not make the implementation details public
# Assume that the input will alwaus fit in your terminal window

banner = Banner.new('To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.To boldly go where no one has gone before.')
puts banner
banner = Banner.new('To boldly go where no one has gone before.', 60)
puts banner
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+
banner = Banner.new('')
puts banner
+--+
|  |
|  |
|  |
+--+

# Further Exploration
# modify this class so ::new will optionally let you specify a fixed banner width
# message should be centered


