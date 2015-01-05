   elsif
      document[0..1] == "**"
      document.sub!("**","<strong>")
        if document[-2..-1] == "**"
          document.sub!("**","</strong>")
          document.gsub!("&", "&amp;") 
        end
        document