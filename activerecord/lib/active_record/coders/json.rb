module ActiveRecord
  module Coders # :nodoc:
    class JSON # :nodoc:
      class << self
        delegate :decode, to: ActiveSupport::JSON
        delegate :encode, to: ActiveSupport::JSON
        alias_method :dump, :encode
        alias_method :load, :decode
      end
    end
  end
end
