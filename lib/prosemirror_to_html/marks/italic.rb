module ProsemirrorToHtml
  module Marks
    class Italic < Mark

      def matching
        @node.type === 'italic'
      end

      def tag
        'em'
      end        
    end
  end
end
