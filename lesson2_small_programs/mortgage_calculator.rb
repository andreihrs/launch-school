require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

name = ''
loop do
  prompt(MESSAGES['insert_name'])
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

loop do
  prompt(MESSAGES['welcome'])
  prompt(MESSAGES['loan_amount'])
  loan = ''
  loop do
    loan = gets.chomp
    if loan.empty? || loan.to_f < 0
      prompt(MESSAGES['valid_no'])
    else
      break
    end
  end

  prompt(MESSAGES['apr_amount'])
  apr = ''
  loop do
    prompt(MESSAGES['interest_rate'])
    apr = gets.chomp
    if apr.empty? || apr.to_f < 0
      prompt(MESSAGES['valid_no'])
    else
      break
    end
  end
  prompt(MESSAGES['loan_duration'])
  years = ''
  loop do
    years = gets.chomp
    if years.empty? || years.to_i < 0
      prompt(MESSAGES['valid_no'])
    else
      break
    end
  end

  months = years.to_i * 12
  monthly_interest_rate = apr.to_f / 12
  monthly_payment = loan.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))

  prompt "Your monthly payment is: #{format('%02.2f', monthly_payment)}"
  prompt(MESSAGES["finish_or_not"])
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt(MESSAGES['goodbye'])
