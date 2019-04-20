module ProsemirrorToHtml
  module Nodes
    class BulletList < Node

      def matching
        @node.type === 'bullet_list'
      end

      def data
        'ul'
      end
    end
  end
end
