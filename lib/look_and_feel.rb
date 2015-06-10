require 'look_and_feel/version'
require 'look_and_feel/engine'
require 'look_and_feel/helper'

ActiveSupport.on_load(:action_view) do
  include LookAndFeel::Helper
end

module LookAndFeel
end
