require_relative 'Lib/app'
require_relative 'Lib/app_interface'

def main
  app = App.new
  app_interface = AppInterface.new(app)
  app_interface.run
end
main
