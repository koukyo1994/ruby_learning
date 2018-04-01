module Loggable
  module_function
  PREFIX = '[LOG]'.freeze

  def log text
    puts "#{PREFIX} #{text}"
  end

end
