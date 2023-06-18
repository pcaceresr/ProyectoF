package Controller;
import config.Conexion;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class IndexController {
    Conexion conexion = new Conexion();
    ModelAndView objModelAndView = new ModelAndView();
    JdbcTemplate jbdcTemplate = new JdbcTemplate(conexion.conectar());

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

    @RequestMapping("tienda.htm")
    public ModelAndView Listar() {
        String strQuerySQL = "select * from tbl_producto";
        List listaDatos = this.jbdcTemplate.queryForList(strQuerySQL);
        objModelAndView.addObject("lista", listaDatos);
        objModelAndView.setViewName("tienda");
        return objModelAndView;
    }

    @RequestMapping("agregar.htm")
    public ModelAndView agregar() {
        objModelAndView.setViewName("agregar");
        return objModelAndView;
    }

}
