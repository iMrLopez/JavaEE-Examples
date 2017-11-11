import javax.faces.context.FacesContext;

import javax.servlet.http.HttpSession;
public class Session-Bean {

    public Session-Bean() {
    }
    
    /*
		Descripcion: btiene el valor del atributo pasado como parametro y lo devuelve como String
		parametros: nombreAtributo -> Nombre del atributo sesion a retornar
		Retorno:
				String:  si se proceso correctamente
				String "El Atributo no existe": si hay algun error.
	
	
	*/
    private String obtenerValorDeSesion(String nombreAtributo){
        FacesContext fc = FacesContext.getCurrentInstance();
        HttpSession session = (HttpSession)fc.getExternalContext().getSession(true);
        
        try {
            return (String)session.getAttribute(nombreAtributo);
        } catch (Exception e) {
            return "El Atributo no existe";
        }
    }

	/*
		Descripcion: Usado para crear o modificar el valor de un atributo sesion en JSF
		parametros: nombreAtributo -> Nombre del atributo sesion a crear o modificar
					valorAtributo -> Valor a asignar al atributo seleccionado
		Retorno:
				True si se proceso correctamente
				False si hay algun error.
	*/
	
    private boolean setearValorDeSesion(String nombreAtributo, String valorAtributo) {
        FacesContext fc = FacesContext.getCurrentInstance();
        HttpSession session = (HttpSession)fc.getExternalContext().getSession(true);

        try {
            session.setAttribute(nombreAtributo, valorAtributo);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
}
