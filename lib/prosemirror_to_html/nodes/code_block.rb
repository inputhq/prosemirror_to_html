module ProsemirrorToHtml
  module Nodes
    class CodeBlock < Node

      def matching
        @node.type === 'code_block'
      end

      def tag
        ['pre', 'tag']
      end

    end
  end
end
