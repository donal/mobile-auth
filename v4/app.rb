require 'rack'

module App
  class EndPoint
    def self.call(env)
      puts "before caller"
      puts caller
      env['warden'].authenticate!
      # p env['warden']
      [200, {"Content-Type" => "text/html"}, ["We have arrived.\n"]]
    end
  end

  class BadAuth
    def self.call(env)
      [403, {"Content-Type" => "text/html"}, ["Who are you?\n"]]
    end
  end
end
