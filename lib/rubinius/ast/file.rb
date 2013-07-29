# -*- encoding: us-ascii -*-

module Rubinius::ToolSet.current::TS
  module AST
    class File < Node
      def bytecode(g)
        pos(g)

        g.push_scope
        g.send :active_path, 0
      end

      def to_sexp
        [:file]
      end
    end
  end
end
