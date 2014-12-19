class Array
  def my_inject(*args)
    copy = self.dup
    if args[0].is_a?(Symbol) || !args.any?
      memo ||= copy[0] 
      copy.shift
    else      
      memo = args[0]
    end
    if args[0].is_a?(Symbol)
      copy.each {|item| memo = memo.send(args[0], item)}
    elsif args[1].is_a?(Symbol)
      copy.each {|item| memo = memo.send(args[1], item)}
    else 
      yield memo, copy[1]
      copy.each {|item| memo = yield memo, item}
    end  
    memo
  end
end
