class Traversal
  include Enumerable

  attr_reader :tree_map, :step_x, :step_y

  def initialize(tree_map, step_x, step_y)
    @tree_map = tree_map
    @step_x = step_x
    @step_y = step_y
  end

  def each
    tree_map.move_to(0,0)

    until tree_map.off_bottom?
      tree_map.move(step_x, step_y)
      yield(tree_map)
    end
  end

  def tree_count
    count do |tree_map|
      tree_map.on_tree?
    end
  end
end
