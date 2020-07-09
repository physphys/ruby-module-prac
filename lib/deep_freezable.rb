module DeepFreezable
  def deep_freeze(array_or_hash)
    return if array_or_hash.class != Array && array_or_hash.class != Hash

    array_or_hash.freeze.each { |ele| ele.freeze }
  end
end
