require 'rack'

module App
  class EndPoint
    def self.call(env)
      [
        200,
        {"Content-Type" => "text/html"},
        ["We have arrived.\n"]
      ]
    end
  end
end
