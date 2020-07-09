require './deep_freezable.rb'

class Team
  extends DeepFreezable

  COUNTRIES = deep_freeze(%w[Japan US China])
end
