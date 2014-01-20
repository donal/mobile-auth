require 'rack'

module App
  class EndPoint
    def self.call(env)
      # p env['params']
      env['params']['msg'] ||= "nothing to say"
      [
        200,
        {"Content-Type" => "text/html"},
        ["We have arrived.", "\n", env['params']['msg']]
      ]
    end
  end
end
