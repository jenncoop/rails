module ActiveRecord
  module Coders # :nodoc:
    class JSONColumn # :nodoc:
      attr_accessor :object_class

      delegate :decode, to: ActiveSupport::JSON
      delegate :encode, to: ActiveSupport::JSON
      alias_method :dump, :encode
      alias_method :load, :decode

      def initialize(object_class = Object)
        @object_class = object_class
      end
    end
  end
end
