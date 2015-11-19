require 'grindstone/engine'

module Grindstone
  class Config
    attr_accessor :blog_title
  end


  def self.config
    unless @grindstone_config
      @grindstone_config = Config.new
    end

    yield @grindstone_config if block_given?
    @grindstone_config
  end

  private
  @grindstone_config = nil
end
