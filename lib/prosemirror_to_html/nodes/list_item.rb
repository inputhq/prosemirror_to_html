module ProsemirrorToHtml
  module Nodes
    class ListItem < Node
      # def initialize(dom_node)
      #   super(dom_node)
      #   @wrapper = { type: 'paragraph' }
      # end

      def matching
        @node.type === 'list_item'
      end

      def tag
        'li'
      end
    end
  end
end
