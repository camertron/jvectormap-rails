jvectormap-rails
================

[jVectorMap](http://jvectormap.com/) for the Rails asset pipeline

### Installation

Add it to your `Gemfile`:
```
gem 'jvectormap-rails', '~> 1.0.0'
```

### Usage

You can add jvectormap-rails to your `application.js` file using a require statement like this:

```
//= require jvectormap
```

To add support for whatever maps you want to use, include them from the `jvectormap/maps` path:

```
//= require jvectormap
//= require jvectormap/maps/us_merc_en
```

The basic pattern is `{country}-{region}_{city}_{projection}_{language}`.  For example, the map `us-il-chicago_mill_en` has a country of `us` (United States), region of `il` (Illinois), city of `chicago`, projection of `mill` (Miller), and a language of `en` (English).  Other common projections include Mercator (`merc`), and Albers equal area (`aea`).

### Asset Precompilation

jvectormap-rails supports precompiling individual maps.  Add an initializer to your app, eg. `config/initializers/jvectormap.rb`:

```ruby
JVectorMap::Rails.precompile_maps << "us_merc_en"
```

### Rake Tasks

Get a list of all available maps by running this from within your Rails app's root:

```
bundle exec jvectormap:maps
```

### License

Licensed under the MIT license.

### Authors

1.  This gem: Cameron Dutro [@camertron](http://twitter.com/camertron)
2.  jVectorMap: Kirill Lebedev, it's [on github](https://github.com/bjornd/jvectormap)
