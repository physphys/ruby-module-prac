require 'minites/autorun'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_of_array
    assert_equal(%w[Japan US China], Team::COUNTRIES)
    assert(Team::COUNTRIES.frozen?)
    assert(Team::COUNTRIES.all { |c| c.frozen? })
  end
end
