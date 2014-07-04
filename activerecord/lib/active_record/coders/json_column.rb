module ActiveRecord
  module Coders # :nodoc:
    class JSONColumn # :nodoc:

      attr_accessor :object_class
      alias_method :dump, :encode
      alias_method :load, :decode
      delegate :decode, to: ActiveSupport::JSON
      delegate :encode, to: ActiveSupport::JSON
      
    end
  end
end
