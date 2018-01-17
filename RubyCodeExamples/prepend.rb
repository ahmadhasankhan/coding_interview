# [prepend] - invokes Module.prepend_features on each parameter in reverse order.

module Before
end

class Example
  prepend Before
end

p Example.ancestors
# => [Before, Example, Object, Kernel, BasicObject]