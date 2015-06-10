require 'look_and_feel/version'
require 'look_and_feel/engine'
require 'semantic_id/helper'

ActiveSupport.on_load(:action_view) do
  include LookAndFeel::Helper
end

module LookAndFeel
end
