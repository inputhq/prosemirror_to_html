module ProsemirrorToHtml
  module Nodes
    class Text < Node

      def matching
        @node.type === 'text'
      end

      def tag
        @node.text
      end
    end
  end
end
