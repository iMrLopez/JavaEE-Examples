<h:dataTable rows="10" value="#{Bean_Cliente.resultadoBusqueda}"
                                                                  var="actual" styleClass="table">
                                                <%-- oracle-jdev-comment:Faces.RI.DT.Class.Key:prj.Model.Cliente--%>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Id Cliente"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.idCliente}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Nombre Cliente"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.nombreCliente}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Apellido1 Cliente"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.apellido1Cliente}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Apellido2 Cliente"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.apellido2Cliente}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Descuento"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.descuento}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Correo"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.correo}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Fax"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.fax}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Telefono"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.telefono}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Provincia"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.provincia}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Canton"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.canton}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Distrito"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.distrito}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Barrio"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.barrio}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Tipo Telefono"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.tipoTelefono}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Tipo Estado"/>
                                                    </f:facet>
                                                    <h:outputText value="#{actual.tipoEstado}"/>
                                                </h:column>
                                                <h:column headerClass="text-primary">
                                                    <f:facet name="header">
                                                        <h:outputText value="Accion"/>
                                                    </f:facet>
                                                    <h:form>
                                                        <h:commandButton action="#{Bean_Cliente.accion_Editar}"
                                                                         value="Editar"
                                                                         styleClass="btn btn-primary btn-round">
                                                            <f:param name="valorEditar" value="#{actual.idCliente}"/>
                                                        </h:commandButton>
                                                    </h:form>
                                                </h:column>
                                            </h:dataTable>