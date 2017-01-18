class RPNCalculator
  OPERATORS = [:+, :-, :*, :/]

  def initialize
    @stack = []
  end

  def push(el)
    @stack << el
  end

  def evaluate(string)
    tokens(string).each do |char|
      case char
      when Integer
        push(char)
      when Symbol
        perform_op(char)
      end
    end

    value
  end

  def plus
    perform_op(:+)
  end

  def minus
    perform_op(:-)
  end

  def divide
    perform_op(:/)
  end

  def times
    perform_op(:*)
  end

  def tokens(string)
    results = string.split(" ")
    results.map { |el| OPERATORS.include?(el.to_sym) ? el.to_sym : Integer(el) }
  end

  def value
    @stack.last
  end

  private
  def perform_op(op_sym)
    raise "calculator is empty" unless @stack.count >= 2

    right_value = @stack.pop
    left_value = @stack.pop

    case op_sym
    when :+
      @stack << left_value + right_value
    when :-
      @stack << left_value - right_value
    when :*
      @stack << left_value * right_value
    when :/
      @stack << left_value.fdiv(right_value)
    else
      @stack << left_value < right_value
      raise ArgumentError.new("No operation #{op_sym}")
    end

    self
  end
end
