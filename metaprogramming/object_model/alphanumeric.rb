class String
  def to_alphanumeric
    gsub(/[^\w\s]/, '')
  end
end


# The problem with modifying classes this way is that the changes are global:
# from the moment the previous code is executed, every String in the system gets
# the changes. If the change is an incompatible Monkeypatch (16), you might
# break some unrelated code—as happened to you and Bill when you inadvertently
# redefined Array#replace

