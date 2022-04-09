class SimpleCalculator
  ALLOWED_OPERATIONS = {
    "+" => Proc.new { |x, y| x+y }, 
    "/" =>  Proc.new { |x, y| x/y }, 
    "*" =>  Proc.new { |x, y| x*y }
  }.freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    if !((first_operand.instance_of? Fixnum) && (second_operand.instance_of? Fixnum))
      raise ArgumentError
    end
    if operation == '/' && second_operand == 0
      return "Division by zero is not allowed."
    end

    if not ALLOWED_OPERATIONS.has_key? operation
      raise UnsupportedOperation
    end

    result = ALLOWED_OPERATIONS[operation].call(first_operand, second_operand)
    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
