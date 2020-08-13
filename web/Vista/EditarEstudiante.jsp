<%@page import="Modelo.Estudiante"%>
<%@page import="ModeloDAO.EstudianteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <%
                EstudianteDAO estudianteDAO = new EstudianteDAO();
                int s_idestudiante = Integer.valueOf(request.getParameter("f_idestudiante"));
                Estudiante estudiante = (Estudiante)estudianteDAO.buscarestudiante(s_idestudiante);                
            %>
            <form name="EditarEstudiantesForm" action="Controlador" method="get">
                <table border="1">
                    <thead>
                        <tr>
                            <th colspan="2">Editar Estudiantes</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nombre: </td>
                            <td><input type="text" name="f_nombre" value="<% out.print(estudiante.getNombre()); %>" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td>Apellidos: </td>
                            <td><input type="text" name="f_apellidos" value="<% out.print(estudiante.getApellidos()); %>" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td>DNI: </td>
                            <td><input type="text" name="f_dni" value="<% out.print(estudiante.getDni()); %>" maxlength="8" size="8" /></td>
                        </tr>
                        <tr>
                            <td>Código</td>
                            <td><input type="text" name="f_codigo" value="<% out.print(estudiante.getCodigo()); %>" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td>Estado</td>
                            <td><input type="text" name="f_estado" value="<% out.print(estudiante.getEstado()); %>" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" name="editar" value="Editar Estudiante" />
                                <input type="hidden" name="f_accion" value="editarestudiante02" />
                                <input type="hidden" name="f_idestudiante" value="<% out.print(estudiante.getIdestudiante()); %>" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>
            
        </div>
    </body>
</html>
