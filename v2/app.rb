require 'rack'

module App
  class EndPoint
    def self.call(env)
      # p env['params']
      [
        200,
        {"Content-Type" => "text/html"},
        ["We have arrived."]
      ]
    end
  end
end
