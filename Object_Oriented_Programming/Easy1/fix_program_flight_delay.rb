# consider the following:
# nothing is technically wrong, but this definition might lead to
#   problems in the future, how do we fix this?

class Flight
  attr_accessor :database_handle

  def initialize(flight_number)
    @database_handle = Database.init
    @flight_number = flight_number
  end
end

# We allow for database_handle to be written over, so it can be altered.
# So remove the attr_accessor :database_handle call.
