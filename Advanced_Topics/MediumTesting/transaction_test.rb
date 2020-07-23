require 'minitest/autorun'
require_relative 'transaction'

class TransactionTest < Minitest::Test
  def setup
    @transaction = Transaction.new(100)
  end

  def test_prompt_for_payment
    transaction = Transaction.new(30)
    input = StringIO.new('30\n')
    output = StringIO.new
    transaction.prompt_for_payment(input: input, output: output)
    assert_equal 30, transaction.amount_paid
  end

  # def test_prompt_for_payment_enough_funds
  #   input = StringIO.new('100\n')
  #   assert_output("You owe $#{@transaction.item_cost}.\nHow much are you paying?\n") do
  #     @transaction.prompt_for_payment(input: input)
  #   end

  #   assert_equal(100, @transaction.amount_paid)
  # end

  # def test_prompt_for_payment_insufficient_funds
  #   input = StringIO.new('50\n')
  #   output = "You owe $#{@transaction.item_cost}.\nHow much are you paying?\n" +
  #             "That is not the correct amount. Please make sure to pay the full cost.\n"
  #   assert_output(output) do
  #     @transaction.prompt_for_payment(input: input)
  #   end
  # end

end