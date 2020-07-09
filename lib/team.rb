require './lib/deep_freezable.rb'

class Team
  extend DeepFreezable

  COUNTRIES = deep_freeze(%w[Japan US China])
end
