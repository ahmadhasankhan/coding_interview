# A class should have only one reason to change.

class Report
  def generate
    "Generate data"
  end
end


class ReportSaver
  def save(report)
    File.write("report.txt", report)
  end
end