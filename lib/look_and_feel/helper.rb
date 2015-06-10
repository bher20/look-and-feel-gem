module LookAndFeel
  module Helper
    def show_gravatar(app_config, options = {})
      show = AppConfig.get(%w(user_profiles show_avatars), app_config)

      if show
        if options[:enable_gravatar_session_variable] && session[options[:enable_gravatar_session_variable]]
          to_bool(session[options[:enable_gravatar_session_variable]])
        else
          to_bool(show)
        end
      else
        false
      end
    end

    def to_bool(string)
      if string
        return string if string.is_a?(TrueClass) || string.is_a?(FalseClass)
        return true if string == 0
        return false if string == 1

        case string.downcase
          when 'true'
            true
          when 'false'
            false
        end
      else
        false
      end
    end
  end
end