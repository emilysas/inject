require 'byebug'

class Array
  def my_inject(*args)
    copy = self.dup
    if !args.any? 
      memo ||= copy[0] 
      copy.shift
    elsif !args[0].is_a?(Symbol)
      memo = args[0]
    else args[0].is_a?(Symbol)
      memo ||= copy[0]
      copy.shift
    end
    puts memo
    if args[0].is_a?(Symbol)
      method_sym = args[0]
      copy.each do |item| 
        memo = memo.send(method_sym, item)
      end
    elsif args[1].is_a?(Symbol)
      method_sym = args[1]
      copy.each do |item| 
        memo = memo.send(method_sym, item)
      end
    else 
      yield memo, copy[1]
      copy.each {|item| memo = yield memo, item}
    end
    memo
  end
end




