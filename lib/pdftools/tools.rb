module PDFTools
  class Tools

    def self.merge(files)
      cmd = "java -Xss1024K -Xmx512m -cp #{JAR_ROOT}/multivalent*.jar tool.pdf.Merge -samedoc #{files.join(" ")}"
      system(cmd)
    end
    
  end
end
