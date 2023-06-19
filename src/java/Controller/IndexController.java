package Controller;
import config.Conexion;
import entities.Producto;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @RequestMapping(value = "agregar.htm", method = RequestMethod.GET)
        public ModelAndView agregar() {
        objModelAndView.addObject(new Producto());
        objModelAndView.setViewName("agregar");
        return objModelAndView;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
        public ModelAndView agregar(Producto producto) {
        String strSQL = "INSERT INTO tbl_producto(nombre,precio,descripcion) VALUES(?,?,?)";
        this.jbdcTemplate.update(strSQL,producto.getStrNombre(),producto.getIntPrecio(),producto.getStrDescripcion());
        return new ModelAndView("redirect:/tienda.htm");
    }

}
