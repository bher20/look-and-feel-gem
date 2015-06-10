module LookAndFeel
  class Engine < ::Rails::Engine

    initializer :assets do |config|
      # Javascripts
      Rails.application.config.assets.precompile += %w{ look_and_feel.js }
      Rails.application.config.assets.precompile += %w{ look_and_feel/bootstrap.min.js }
      Rails.application.config.assets.precompile += %w{ look_and_feel/jquery.dataTables.min.js }
      Rails.application.config.assets.precompile += %w{ look_and_feel/look_and_feel.js }
      Rails.application.config.assets.precompile += %w{ look_and_feel/notice_and_alerts.js }

      #CSSs
      Rails.application.config.assets.precompile += %w{ look_and_feel.css }
      Rails.application.config.assets.precompile += %w{ look_and_feel/bootstrap.css }
      Rails.application.config.assets.precompile += %w{ look_and_feel/bootstrap.css.map }
      Rails.application.config.assets.precompile += %w{ look_and_feel/bootstrap-theme.css }
      Rails.application.config.assets.precompile += %w{ look_and_feel/jquery.dataTables.css }
      Rails.application.config.assets.precompile += %w{ look_and_feel/jquery.dataTables_themeroller.css }
      Rails.application.config.assets.precompile += %w{ look_and_feel/look_and_feel.css }
      Rails.application.config.assets.precompile += %w{ look_and_feel/notice_alerts.css }

      Rails.application.config.assets.paths << root.join('app', 'assets')
    end

  end
end