require 'strscan'

class Token
  attr_reader :type

  def initialize(type, value)
    @type, @value = type, value
  end

  def value
    @type == :int ? @value.to_i : @value
  end

  def priority
    return 1 if value == '+' || value == '-'
    return 2 if value == '*' || value == '/'
  end
end

class Tokenizer
  RULES = {
    /\d+/ => :int,
    /[\/+\-*]/ => :op
  }

  def initialize
    @tokens = []
  end

  def parse(expression)
    @buffer = StringScanner.new(expression)
    until @buffer.eos?
      skip_space
      read_tokens
    end
    @tokens
  end

  def read_tokens
    RULES.each do |regex, type|
      token = @buffer.scan(regex)
      @tokens << Token.new(type, token) if token
    end
  end

  def skip_space
    @buffer.skip(/\s+/)
  end

end


class Evaluator
  def run(tokens)
    @numbers = []

    tokens.each do |token|
      push_number(token) if token.type == :int
      evaluate_operation(token) if token.type == :op
    end

    @numbers.last.value
  end

  private

  def push_number(token)
    @numbers << token
  end

  def evaluate_operation(token)
    right_number = @numbers.pop
    left_number = @numbers.pop

    raise 'invalid postfix expression' unless right_number && left_number

    result = evaluate(left_number.value, right_number.value, token)

    @numbers << Token.new(:int, result)
  end

  def evaluate(left_number, right_number, operation)
    case operation.value
      when '+' then
        left_number + right_number
      when '-' then
        left_number - right_number
      when '*' then
        left_number * right_number
      when '/' then
        left_number / right_number
    end
  end
end

class ExpressionParser
  attr_reader :output

  def initialize(tokens)
    @tokens = tokens
    @output = []
    @operators = []
  end

  def run
    @tokens.each do |token|
      push_number(token) if token.type == :int
      process_operator(token) if token.type == :op
    end

    @output += @operators.reverse

    self
  end

  def push_number(token)
    @output << token
  end

  def process_operator(token)
    while operator_priority_is_less_than_or_equal_than(token)
      @output << @operators.pop
    end

    @operators << token
  end

  def operator_priority_is_less_than_or_equal_than(token)
    @operators.last && (token.priority <= @operators.last.priority)
  end

  def to_s
    @output.map(&:value).join(" ")
  end

  def show_stack
    puts "_" * 40
    p output
    puts "_" * 40
    p @operators
  end
end

class Calculator
  def evaluate(expression)
    #If the output is just one number then don't bother evaluating it
    if expression.scan(/\d+/).size == 1
      return expression
    end

    #parse input string
    lexer = Tokenizer.new
    tokens = lexer.parse(expression)

    #convert to postfix notation
    parser = ExpressionParser.new(tokens)
    postfix_exp = parser.run
    #p postfix_exp
    #Evaluate
    Evaluator.new.run(postfix_exp.output)
  end
end
 calc = Calculator.new
p calc.evaluate("5*3+1+6/85+9*100")
#p calc.evaluate("5*3+1+6/2+9*100")
