require 'facts_parser'

module ForemanDiscovery
  class Facts::Parser < ::Facts::Parser

     def operatingsystem
      Foreman::Exception.new 'Discovery Operating System should not be used for generating foreman OS'
    end

    def active_interfaces
      interfaces.delete_if do |int,values|
        facts["#{int}_link"] != 'true'
      end
    end

  end

end
