else
      document[0] == "*"  
      document.sub!("*","<em>")
        if document[-1] == "*"
          document.chop.insert(-1, "</em>")
       end