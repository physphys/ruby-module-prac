require 'minitest/autorun'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_of_array
    assert_equal(%w[Japan US China], Team::COUNTRIES)
    assert(Team::COUNTRIES.frozen?)
    assert(Team::COUNTRIES.each { |c| c.frozen? })
  end

  def test_deep_freeze_of_hash
    assert_equal({ 'Japan' => 'yen', 'US' => 'dollar', 'India' => 'rupee' },
                 Bank::CURRENCIES)
    assert(Bank::CURRENCIES.frozen?)
    assert(Bank::CURRENCIES.each { |k, v| k.frozen? && v.frozen? })
  end
end
