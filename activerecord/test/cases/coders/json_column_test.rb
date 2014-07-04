require "cases/helper"

module ActiveRecord
  module Coders
    class JSONColumnTest < ActiveRecord::TestCase
      def test_initialize_takes_class
        coder = JSONColumn.new(JSON)
        assert_equal JSON, coder.object_class
      end
    end
  end
end
