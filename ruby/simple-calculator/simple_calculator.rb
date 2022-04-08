class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    if !(first_operand.instance_of? Fixnum) || !(second_operand.instance_of? Fixnum)
      raise ArgumentError
    end
    if operation == '/' && second_operand == 0
      return "Division by zero is not allowed."
    end

    res = -1
    case operation
    when '+'
      res = first_operand + second_operand
    when '/'
      res = first_operand / second_operand
    when '*'
      res = first_operand * second_operand
    else
      raise UnsupportedOperation
    end
    "#{first_operand} #{operation} #{second_operand} = #{res}"
  end
end
