module ActiveRecord
  module Coders # :nodoc:
    class JSONColumn # :nodoc:
      delegate :decode, to: ActiveSupport::JSON
      delegate :encode, to: ActiveSupport::JSON
      alias_method :dump, :encode
      alias_method :load, :decode
    end
  end
end