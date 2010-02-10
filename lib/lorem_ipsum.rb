# LoremIpsum
require 'dictionary'

module LoremIpsum
  module Helpers
    # available options are: bytes, sentences, paragraphs, words
    def lorem_ipsum(options={})
      options = { :sentences => 4 } if options == {}
      raise "bytes, sentences, paragraphs, words -- you can only choose one!" if options.keys.size > 1
      content_option = options.keys.first
      content = []
      options[content_option].times do |i|
        content << LoremIpsum::Dictionary.send(options.keys.to_s.singularize)
      end
      case content_option
      when :sentences
        return content_tag 'span', content.join(" ")
      when :paragraphs
        return content.map { |p| content_tag('p',p) }.join
      when :words
        return content.join(" ")
      end
    end
  end
end