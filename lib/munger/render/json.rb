module Munger #:nodoc:
  module Render #:nodoc:
    class JSON #:nodoc:

      attr_reader :report

      def initialize(report)
        @report = report
      end

      def render
        output = []

        # header
        output << @report.columns.collect { |col| @report.column_title(col).to_s }

        # body
        @report.process_data.each do |row|
          output << @report.columns.collect { |col| row[:data][col].to_s }
        end

        output
      end

      def valid?
        @report.is_a? Munger::Report
      end

    end
  end
end