module AppConfig
  def self.get(path, app_config_file)
    temp_item = app_config_file
    path.each do |item|
      temp_item = temp_item[item]

      break unless temp_item
    end

    temp_item
  end
end