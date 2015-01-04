class Array

  def my_inject(*args, &block)
    @copy = self.dup
    (args[0].is_a?(Symbol) || !args.any?) ? no_other_args(*args) : @memo = args[0]
    args[0-1].is_a?(Symbol) ? using_symbol(*args) : using_block(*args, &block)
    @memo
  end

  def no_other_args(*args)
    @memo ||= @copy[0] 
    @copy.shift
  end

  def using_symbol(*args)
    symbol ||= args[0]
    symbol = args[1] unless args[1] == nil
    @copy.each {|item| @memo = @memo.send(symbol, item)}
  end

  def using_block(*args, &block)
    @copy.each {|item| @memo = yield @memo, item}
  end

end

