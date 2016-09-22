module OFX
  module Data
    class Declaration
      DEFAULTS = {
        :"2.0.3" => {ofxheader: "200", version: "203"}
      }

      def self.[](key)
        new(DEFAULTS.fetch(key))
      end

      def self.default
        self[:"2.0.3"]
      end

      attr_reader :ofxheader, :version, :security, :oldfileuid, :newfileuid

      def initialize(opts)
        @ofxheader = opts.fetch(:ofxheader, "NONE")
        @version = opts.fetch(:version, "NONE")
        @security = opts.fetch(:security, "NONE")
        @oldfileuid = opts.fetch(:oldfileuid, "NONE")
        @newfileuid = opts.fetch(:newfileuid, "NONE")
      end
    end
  end
end
