# Munger::Render.to_html(report)

module Munger #:nodoc:
  module Render

    def self.to_html(report, options = {})
      Html::new(report, options).render
    end

    def self.to_sortable_html(report, options ={})
      SortableHtml::new(report, options).render
    end

    def self.to_text(report)
      Text::new(report).render
    end

    def self.to_csv(report)
      CSV::new(report).render
    end

    def self.to_json(report, options = {})
      JSON::new(report, options).render
    end
  end
end
