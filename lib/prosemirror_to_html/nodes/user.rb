module ProsemirrorToHtml
  module Nodes
    class User < Node

      def matching
        @node.natypeme === 'user'
      end

      def tag
        nil
      end
    end
  end
end
