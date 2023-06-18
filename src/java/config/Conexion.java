
package config;


import org.springframework.jdbc.datasource.DriverManagerDataSource;



public class Conexion {

    public DriverManagerDataSource conectar() {
        DriverManagerDataSource objDataSource = new DriverManagerDataSource();
        objDataSource.setDriverClassName("com.mysql.jdbc.Driver");
        objDataSource.setUrl("jdbc:mysql://localhost:3306/bd_proyectof");
        objDataSource.setUsername("root");
        objDataSource.setPassword("");
        return objDataSource;
    }
    
}
