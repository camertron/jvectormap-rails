# encoding: UTF-8

require 'rubygems' unless ENV['NO_RUBYGEMS']

require 'bundler'
require 'rubygems/package_task'

Bundler::GemHelper.install_tasks

task :download_maps do
  # This task scrapes jvectormap.com/maps and downloads them
  # I wish there was a better way to get the map data, but I can't find a repo or anything, so here we are...

  home = `curl -L http://jvectormap.com/maps/`
  links = home.scan(/<a\shref="(\/maps.*)">/).flatten.uniq

  js_files = links.flat_map do |link|
    content = `curl -L #{File.join("http://jvectormap.com", link)}`
    content.scan(/<a\shref=\"(\/js\/jquery-jvectormap[\w\d\-]+\.js)">/).flatten.uniq
  end

  js_files.uniq.each do |file|
    save_name = File.basename(file).gsub("jquery-jvectormap-", "")
    `curl -L #{File.join("http://jvectormap.com", file)} > #{File.join("./vendor/assets/javascripts/jvectormap/maps", save_name)}`
  end
end

load "tasks/jvectormap.rake"