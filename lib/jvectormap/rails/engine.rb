# encoding: UTF-8

module JVectorMap
  module Rails
    class Engine < ::Rails::Engine
      rake_tasks do
        load File.expand_path(File.join(File.dirname(__FILE__), "../../../tasks/jvectormap.rake"))
      end
    end
  end
end