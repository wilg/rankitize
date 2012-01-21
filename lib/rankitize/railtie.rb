module Rankitize
  class Railtie < Rails::Railtie
    initializer 'rankitize.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
  end
end