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
public String users(ModelMap map) {
        return "user";
}
@RequestMapping("/cab")
public String news(ModelMap map) {
        return "cab";
}
@RequestMapping("/viewusers")
public String viewusers(ModelMap map) {
        return "viewusers";
}


@RequestMapping("/ok")
public String ok(ModelMap map) {
        return "ok";
}
@RequestMapping("/okcab")
public String okcab(ModelMap map) {
        return "okcab";
}

@RequestMapping("/viewcab")
public String viewcab(ModelMap map) {
        return "viewcab";
}
   
    @RequestMapping("/cancel")
public String cancel(ModelMap map) {
        return "cancel";
}

}

 