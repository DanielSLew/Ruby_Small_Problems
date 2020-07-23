# Change the follow class so that both flip_switch and switch= are private

class Machine
  attr_writer :switch

  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

class Machine
  def start
    flip_switch(:on)
  end

  def stop
    flip_switch(:off)
  end

  def state
    puts "The state of the machine is #{switch}."
  end
  
  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end