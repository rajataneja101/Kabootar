package controllers; 

import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping;  
import org.springframework.ui.ModelMap;
@Controller  
public class rajat {  
@RequestMapping("/index")
public String index(ModelMap map) {
        return "index";
}
@RequestMapping("/user")
public String events(ModelMap map) {
        return "user";
}
@RequestMapping("/cab")
public String news(ModelMap map) {
        return "cab";
}


@RequestMapping("/ok")
public String teams(ModelMap map) {
        return "ok";
}
@RequestMapping("/okcab")
public String posts(ModelMap map) {
        return "okcab";
}

@RequestMapping("/viewcab")
public String contact(ModelMap map) {
        return "viewcab";
}


}

 