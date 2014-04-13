require "immutable_hashes/version"

class ImmutableHashError < StandardError; end

class MutableHash < Hash.dup; end

class Hash
  alias_method :old_key_assignment, :[]=

  def []=(key, value)
    if has_key?(key)
      raise ImmutableHashError.new("Cannot change the value of #{key} to #{value}. #{key} is already set to #{fetch(key)}")
    end
    old_key_assignment(key, value)
  end
end
