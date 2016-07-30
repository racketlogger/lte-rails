# AdminLTE gem for Rails

This is a gem for using the [AdminLTE](https://github.com/almasaeed2010/AdminLTE) template within a Rails project.

This gem is currently using AvminLTE v2.3.5.

To use, add this to your Gemfile:
```
gem 'lte-rails'
```

and add this (changing the skin name to anything you want or adding more) to your application.css:

```
 *= require lte-rails
 *= require AdminLTE/skins/skin-blue
```

# Notes

This gem uses the main AdminLTE github repo to re-generate the gem from them by dynamically patching so that the assets work properly within the Rails environment.

This gem is not supporting the Javascript parts, yet.
