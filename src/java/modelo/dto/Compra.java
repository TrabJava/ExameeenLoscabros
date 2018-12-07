package modelo.dto;
// Generated 06-12-2018 23:41:35 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Compra generated by hbm2java
 */
public class Compra  implements java.io.Serializable {


     private Integer idCompra;
     private Usuario usuario;
     private Integer montoTotal;
     private Boolean pagado;
     private Integer medioPago;
     private Integer medioEnvio;
     private Set<Boleta> boletas = new HashSet<Boleta>(0);

    public Compra() {
    }

    public Compra(Integer medioPago, Integer medioEnvio) {
        this.medioPago = medioPago;
        this.medioEnvio = medioEnvio;
    }

    
    
    public Compra(Usuario usuario, Integer montoTotal, Boolean pagado, Integer medioPago, Integer medioEnvio, Set<Boleta> boletas) {
       this.usuario = usuario;
       this.montoTotal = montoTotal;
       this.pagado = pagado;
       this.medioPago = medioPago;
       this.medioEnvio = medioEnvio;
       this.boletas = boletas;
    }
   
    public Integer getIdCompra() {
        return this.idCompra;
    }
    
    public void setIdCompra(Integer idCompra) {
        this.idCompra = idCompra;
    }
    public Usuario getUsuario() {
        return this.usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    public Integer getMontoTotal() {
        return this.montoTotal;
    }
    
    public void setMontoTotal(Integer montoTotal) {
        this.montoTotal = montoTotal;
    }
    public Boolean getPagado() {
        return this.pagado;
    }
    
    public void setPagado(Boolean pagado) {
        this.pagado = pagado;
    }
    public Integer getMedioPago() {
        return this.medioPago;
    }
    
    public void setMedioPago(Integer medioPago) {
        this.medioPago = medioPago;
    }
    public Integer getMedioEnvio() {
        return this.medioEnvio;
    }
    
    public void setMedioEnvio(Integer medioEnvio) {
        this.medioEnvio = medioEnvio;
    }
    public Set<Boleta> getBoletas() {
        return this.boletas;
    }
    
    public void setBoletas(Set<Boleta> boletas) {
        this.boletas = boletas;
    }




}


