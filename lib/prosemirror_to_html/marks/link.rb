module ProsemirrorToHtml
  module Marks
    class Link < Mark

      def matching
        @node.type === 'link'
      end

      def tag
        [{
          tag: "a",
          attrs: @node.attrs
        }]
      end
    end
  end
end
