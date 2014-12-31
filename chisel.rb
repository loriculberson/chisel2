class Chisel

  def parse(document)

   if document[0..2] == "###"
      document.gsub!("###","<h3>")
      document + "</h3>"

   elsif document[0..1] == "##"
      document.gsub!("##","<h2>")
      document + "</h2>"
  
    elsif
      document[0] == "#"
      document.gsub!("#","<h1>")
      document + "</h1>"
    
    elsif
      document[0..1] == "**"
      document.sub!("**","<strong>")
        if document[-2..-1] == "**"
          document.sub!("**","</strong>")
          document.gsub!("&", "&amp;") 
        end
        document

    else
      document[0] == "*"  
      document.sub!("*","<em>")
        if document[-1] == "*"
          document.chop.insert(-1, "</em>")
       end
    end
  end
end



  
