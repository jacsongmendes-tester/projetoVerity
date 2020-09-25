require "report_builder"
require "date"
Before do 
    @Pages = Pages.new
end

After do 
    temp_shot = page.save_screenshot("log/temp_shot.png")
    screenshot =  Base64.encode64(File.open(temp_shot, "rb").read)
    embed(screenshot, "image/png", "Screenshot")
end 


date = DateTime.now
@current_date = date.to_s.tr(":", "-")
at_exit do 
    ReportBuilder.configure do |config|
        config.input_path = "log/report.json"
        config.report_path = "log/" + @current_date
        config.report_types = [:retry, :html]
        config.report_title = "Teste Automatizado - Verity"
        config.compress_image = true
        config.additional_info = {"App" => 'Web', "Data de execução" => @current_date }
    end
    ReportBuilder.build_report
end
