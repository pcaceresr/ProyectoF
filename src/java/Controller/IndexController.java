package Controller;

import com.sun.faces.action.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class IndexController {
        ModelAndView objModelAndView = new ModelAndView();
    
    @RequestMapping("index.htm")
    public ModelAndView index(){
        objModelAndView.setViewName("index");
        return  objModelAndView;
    }
    
}
