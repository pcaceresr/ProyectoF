package Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class IndexController {

    ModelAndView objModelAndView = new ModelAndView();

    @RequestMapping("index.htm")
    public ModelAndView index() {
        objModelAndView.setViewName("index");
        return objModelAndView;
    }

    @RequestMapping("nosotros.htm")
    public ModelAndView nosotros() {
        objModelAndView.setViewName("nosotros");
        return objModelAndView;
    }

    @RequestMapping("contacto.htm")
    public ModelAndView contacto() {
        objModelAndView.setViewName("contacto");
        return objModelAndView;
    }

}
