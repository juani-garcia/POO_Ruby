require_relative 'transaction'
require_relative 'program'

class MilesTracker

  def initialize
    @miles_by_program = {}
  end

  def status
    return 'Miles Tracker is empty' if @miles_by_program.keys.empty?
    s = "Miles Tracker\n"
    @miles_by_program.keys.sort.each do |miles_program_name|
      s += "#{miles_program_name}\n"
      @miles_by_program[miles_program_name].miles_transactions.sort.each do |miles_transaction|
        s += "#{miles_transaction}\n"
      end
    end
    s
  end

  def add_miles_program(name)
    @miles_by_program[name] = Program.new unless @miles_by_program.has_key? name
  end

  def add_miles(program, from, to, miles)
    raise ArgumentError, 'Invalid Miles Program' unless @miles_by_program.key? program
    @miles_by_program[program].add_transaction(Transaction.new(from, to, miles))
  end

end
