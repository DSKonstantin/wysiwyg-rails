require "font-awesome-sass"

module WYSIWYG
  module Rails
    class Engine < ::Rails::Engine
      initializer 'froala.assets.precompile', group: :all do |app|
        app.config.assets.precompile += %W(
          froala_editor.min.js
          plugins/*.js
          languages/*.js
        )
      end
    end
  end
end
