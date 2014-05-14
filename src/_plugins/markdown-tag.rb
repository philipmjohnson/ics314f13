=begin
Jekyll tag to include Markdown text from _includes directory preprocessing with Liquid.
Usage:
{% markdown <filename> %}
Original authors:
https://gist.github.com/tmtk75/1408402
https://gist.github.com/mignev/7759676
=end
module Jekyll
 
  class MarkdownTag < Liquid::Tag
 
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end
 
    def render(context)
      site = context.registers[:site]
      source = nil
      source = context.registers[:site].config['source']
      if source == nil
        tmpl = File.read File.join "_includes", @text
      else
        tmpl = File.read File.join source, "_includes", @text
      end
      converter = site.getConverterImpl(Jekyll::Converters::Markdown)
      tmpl = (Liquid::Template.parse tmpl).render site.site_payload
      html = converter.convert(tmpl)
    end
  
  end
  
end
 
Liquid::Template.register_tag('markdown', Jekyll::MarkdownTag)
