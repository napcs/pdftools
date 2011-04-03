module PDFTools
  class Tools

    def self.merge(options)
      files = options[:files]
      outfile = options[:outfile]
      cmd = "java -Xss1024K -Xmx512m -cp #{JAR_ROOT}/multivalent*.jar tool.pdf.Merge -samedoc #{files.join(" ")}"
      system(cmd)
      
      if outfile
        FileUtils.mv files.first.gsub(".pdf", "-m.pdf"), outfile
      end
    end
    
  end
end
