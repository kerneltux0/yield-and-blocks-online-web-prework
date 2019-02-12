def hello_t(names)
  if block_given?
    i = 0
    while i < names.size
      yield(names[i])
      i = i + 1
    end
    names
  else
    puts "Hey" No block was given!"
  end
end

hello_t(names) do |name|
  if name.start_with?("T")
    puts "Hi, #{name}"
  end
end