module ProsemirrorToHtml
  module Marks
    class Bold < Mark

      def matching
        @node.type === 'bold'
      end

      def tag
        'strong'
      end
    end
  end
end
