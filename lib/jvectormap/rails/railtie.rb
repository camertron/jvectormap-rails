# encoding: UTF-8

module JVectorMap
  module Rails
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load File.join(JVectorMap::Rails.gem_root, "tasks/jvectormap.rake")
      end

      config.after_initialize do
        ::Rails.application.config.assets.precompile += JVectorMap::Rails.precompile_maps.map do |map_name|
          "jvectormap/maps/#{map_name}.js"
        end
      end
    end
  end
end