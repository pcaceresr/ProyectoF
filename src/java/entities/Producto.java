package entities;

public class Producto {
    int idProducto;
    String strNombre;
    int intPrecio;
    String strDescripcion;

    public Producto() {
    }

    public Producto(int idProducto, String strNombre, int intPrecio, String strDescripcion) {
        this.idProducto = idProducto;
        this.strNombre = strNombre;
        this.intPrecio = intPrecio;
        this.strDescripcion = strDescripcion;
    }

    public int getIdProducto() {
        return idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }

    public String getStrNombre() {
        return strNombre;
    }

    public void setStrNombre(String strNombre) {
        this.strNombre = strNombre;
    }

    public int getIntPrecio() {
        return intPrecio;
    }

    public void setIntPrecio(int intPrecio) {
        this.intPrecio = intPrecio;
    }

    public String getStrDescripcion() {
        return strDescripcion;
    }

    public void setStrDescripcion(String strDescripcion) {
        this.strDescripcion = strDescripcion;
    }
    
}
