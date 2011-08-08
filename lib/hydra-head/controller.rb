module HydraHead
  ## Define ControllerMethods
  module Controller
  	## this one manages the usual self.included, klass_eval stuff
    extend ActiveSupport::Concern

    included do
      before_filter :method_for_before_filtering
    end

    module InstanceMethods
      def method_for_before_filtering
        #puts "Filtering before" 
      end

      def method_not_a_filter
        puts "not used as a filter"
      end

      def layout_name
        puts " ***** CALLING LAYOUT_NAME ****"
        'application'
      end
    end
  end
end

::ActionController::Base.send :include, HydraHead::Controller

