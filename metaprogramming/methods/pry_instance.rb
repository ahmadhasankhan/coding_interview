def refresh(options={})
  defaults = {}
  attributes = [ :input, :output, :commands, :print, :quiet,
                 :exception_handler, :hooks, :custom_completions,
                 :prompt, :memory_size, :extra_sticky_locals ]
  attributes.each do |attribute|
    defaults[attribute] = Pry.send attribute
  end
# ...
  defaults.merge!(options).each do |key, value|
    send("#{key}=", value) if respond_to?("#{key}=")
  end
  true
end


# The code above uses send to read the default attribute values into a hash,
# merges this hash with the options hash, and finally uses send again to call
# attribute accessors such as memory_size=. The Kernel#respond_to? method returns
# true if methods such as Pry#memory_size= actually exist, so that any key in options
# that doesn’t match an existing attribute will be ignored. Neat, huh?