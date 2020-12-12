def get_input delim = ?\n
  pos = DATA.tell
  input = DATA.read.split delim
  DATA.seek pos
  input
end
