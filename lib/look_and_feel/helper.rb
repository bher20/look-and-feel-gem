module LookAndFeel
  module Helper
    def show_gravatar(app_config)
      show = AppConfig.get(%w(user_profiles show_avatars), app_config)

      if show
        to_bool(show)
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