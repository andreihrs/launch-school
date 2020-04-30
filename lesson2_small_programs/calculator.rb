require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
LANGUAGE = 'en'

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(no)
  no.to_i().to_s() == no
end

def float?(no)
  Float(no) rescue false
end

def valid_number?(no)
  integer?(no) || float?(no)
end

def operation_to_message(op)
  message = case op
            when '1'
              'Adding'
            when '2'
              'Substracting'
            when '3'
              'Multiplying'
            when '4'
              'Dividing'
            end
  message
end

name = ''
loop do
  prompt(messages('insert_name', LANGUAGE))
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(messages('valid_name', LANGUAGE))
  else
    break
  end
end

prompt ("Hi #{name}")
loop do
  prompt(messages('intro_2nos', LANGUAGE))
  a = ''
  loop do
    prompt(messages('first_no', LANGUAGE))
    a = Kernel.gets().chomp()

    if valid_number?(a)
      break
    else
      prompt(messages('invalid_no', LANGUAGE))
    end
  end

  b = ''
  loop do 
    prompt(messages('second_no', LANGUAGE))
    b = Kernel.gets().chomp()

    if valid_number?(b)
      break
    else
      prompt(messages('invalid_no', LANGUAGE))
    end
  end
  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) addition
    2) substraction
    3) multiplication
    4) division
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do 
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(messages('operator_choice', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers..")

  result = case operator
          when '1'
            a.to_i() + b.to_i()
          when '2'
            a.to_i() - b.to_i()
          when '3'
            a.to_i() * b.to_i()
          when '4'
            a.to_f() / b.to_f()
          end

  prompt("The result is #{result}")
  prompt(messages('finish_or_not', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('thanks', LANGUAGE))