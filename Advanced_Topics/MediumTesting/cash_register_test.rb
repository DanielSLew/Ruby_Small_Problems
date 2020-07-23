require 'pry'
require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def setup
    @transaction = Transaction.new(100)
    @till = CashRegister.new(500)
  end

  def test_accept_money
    @transaction.amount_paid = 100
    @till.accept_money(@transaction)
    assert_equal(600, @till.total_money)
  end

  def test_change
    @transaction.amount_paid = 120
    leftover = @till.change(@transaction)
    assert_equal(20, leftover)
  end

  def test_give_receipt
    receipt = puts "You've paid $#{@transaction.item_cost}."
    assert_output("You've paid $#{@transaction.item_cost}.\n") do
      @till.give_receipt(@transaction)
    end
  end
end




