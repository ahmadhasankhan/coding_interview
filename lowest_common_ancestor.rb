def find_path(root, node)
  return nil if root.nil?

  if root.node == node
    return Stack([node])
  end

  left_path = find_path(root.left, node)

  if left_path != nil
    left_path.add(root.node)
    return left_path
  end

  right_path = find_path(root.right, node)
  if right_path != nil
    right_path.add(root.node)
    return right_path
  end

  nil
end


def lca(root, node1, node2)
  node1_path = find_path(root, node1)
  node2_path = find_path(root, node2)

  lca_return = nil

  while node1_path && node2_path
    node1_pop = node1_path.pop
    node2_pop = node2_path.pop

    if node1_pop == node2_pop
      lca_return = node1_pop
    else
      break
    end
  end
  lca_return
end

