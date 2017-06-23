# encoding: utf-8

module Ruboty
  # DslModel
  class DslModel
    # user_name
    attr_accessor :user_name

    # description
    attr_accessor :description

    # gem_name
    attr_accessor :gem_name

    # gem_class_name
    attr_writer :gem_class_name

    def gem_class_name
      @gem_class_name || gem_class_name_from_gem_name
    end

    def gem_class_name_from_gem_name
      require 'active_support'
      require 'active_support/core_ext'
      gem_name && gem_name.tr('-', '/').classify
    end

    # env
    attr_accessor :env

    # commands
    attr_accessor :commands
  end
end
