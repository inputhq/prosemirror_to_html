module ProsemirrorToHtml
  module Nodes
    class OrderedList < Node

      def matching
        @node.type === 'ordered_list'
      end

      def data
        'ol'
      end
    end
  end
end
