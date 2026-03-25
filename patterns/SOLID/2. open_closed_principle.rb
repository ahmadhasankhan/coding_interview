# Open for extension, closed for modification.

class Report
  def export
    puts "Exporting Report"
  end
end

class PdfReport < Report
  def export
    puts "DPF Exporting Report"
  end
end

class ExcelReport < Report
  def export
    puts "DPF Exporting Report"
  end
end