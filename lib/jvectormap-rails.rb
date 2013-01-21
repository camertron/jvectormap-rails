# encoding: UTF-8

module JVectorMap
  module Rails

    class << self

      # maps that will be added to asset precompilation
      def precompile_maps
        @precompile_maps ||= []
      end

      def gem_root
        File.expand_path(File.join(File.dirname(__FILE__), "../"))
      end

    end

  end
end

require 'rails'

require 'jvectormap/rails/version'
require 'jvectormap/rails/engine'
require 'jvectormap/rails/railtie'