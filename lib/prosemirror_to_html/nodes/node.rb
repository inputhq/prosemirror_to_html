module ProsemirrorToHtml
  module Nodes

    class Node
      attr_writer :wrapper
      attr_writer :type

      def type
        @type || 'node'
      end

      def initialize(data)
        @node = data
      end

      def matching
        false
      end

      def tag
        nil
      end

      def text
        nil
      end
    end
  end
end
