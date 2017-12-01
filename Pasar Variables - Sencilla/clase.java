public void accion_Editar() {
        //TODO terminar este metodo
        FacesContext fc = FacesContext.getCurrentInstance();
        Map<String, String> params = fc.getExternalContext().getRequestParameterMap();
        String pId = params.get("valorEditar"); //Obtiene el valor parametro para buscarlo en el ArrayList
        Bean_Direccion direcciones = (Bean_Direccion) fc.getApplication().getVariableResolver().resolveVariable(fc, "Bean_Direccion"); //Obtiene la instancia del Bean Direcciones para asi popular de nuevo los campos de direccion en el mismo    
        Iterator itr = this.resultadoBusqueda.iterator(); //Iterar sobre los resultados mostrados en pantalla y obtener el resultado del objeto
        while (itr.hasNext()) {
            Cliente element = (Cliente) itr.next();
            if (element.getIdCliente().equals(pId)) {
                
                //re-popular combos con las selecciones por medio del managed property bean
                direcciones.popular_provincias();
                direcciones.popular_cantones(element.getProvincia().getIdProvincia());
                direcciones.popular_distritos(element.getProvincia().getIdProvincia(), element.getCanton().getIdCanton());
                direcciones.popular_barrios(element.getProvincia().getIdProvincia(), element.getCanton().getIdCanton(), element.getDistrito().getIdDistrito());
                
                this.setNombreCliente(element.getNombreCliente());
                this.setApellido1Cliente(element.getApellido1Cliente());
                this.setApellido2Cliente(element.getApellido2Cliente());
                
                this.setProvincia(element.getProvincia().getIdProvincia());
                this.setCanton(element.getCanton().getIdCanton());
                this.setDistrito(element.getDistrito().getIdDistrito());
                this.setBarrio(element.getBarrio().getIdBarrio());
                
                this.setDescuento(element.getDescuento());
                this.setIdCliente(element.getIdCliente());
                this.setCorreo(element.getCorreo());
                this.setFax(element.getFax());
                this.setTelefono(element.getTelefono());
                this.setTipoEstado(element.getTipoEstado().getIdTipoEstado());
                this.setTipoTelefono(element.getTipoTelefono().getIdTipoTelefono());
                
                
                break;
            }
        }
    }