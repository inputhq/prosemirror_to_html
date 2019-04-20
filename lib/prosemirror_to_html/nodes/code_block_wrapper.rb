module ProsemirrorToHtml
  module Nodes
    class CodeBlockWrapper < Node
      def matching
        @node.name === 'pre'
      end

      def data
        nil
      end
    end
  end
end
