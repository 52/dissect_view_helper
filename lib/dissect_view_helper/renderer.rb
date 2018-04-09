module DissectViewHelper
  class Renderer
    class << self
      def copyright name, message
        "&copy; #{Time.now.year} | <b>#{name}</b> #{message}".html_safe
      end
    end
  end
end
