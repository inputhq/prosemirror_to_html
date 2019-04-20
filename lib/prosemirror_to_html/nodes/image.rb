module ProsemirrorToHtml
  module Nodes
    class Image < Node

      def matching
        @node.type === 'img'
      end

      def tag
        # doc.img(:src => @node.attrs.src)
        'img'
      end
    end
  end
end
