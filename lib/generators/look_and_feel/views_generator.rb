module LookAndFeel
  module Generators
    class ViewsGenerator < ::Rails::Generators::Base
      source_root File.expand_path('../../../../app/views', __FILE__)

      desc 'Copies default look and feel (based on devise) views.'

      def manifest
        directory 'devise', 'app/views/devise'
        directory 'layouts', 'app/views/layouts'
        directory 'menus', 'app/views/menus'
        directory 'account', 'app/views/account'
      end
    end
  end
end