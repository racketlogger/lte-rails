module Lte
  module Rails
    class Engine < ::Rails::Engine
      #initializer 'admin-lte-rails.setup',
      #  :after => 'less-rails.after.load_config_initializers',
      #  :group => :all do |app|
      #    if defined?(Less)
      #      app.config.less.paths << File.join(config.root, 'vendor', 'toolkit')
      #    end
      #  end
    end
  end
end
