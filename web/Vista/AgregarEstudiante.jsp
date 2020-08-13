<%-- 
    Document   : AgregarEstudiante
    Created on : 13/08/2020, 09:04:02 AM
    Author     : TuNombre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <form name="AgregarEstudiantesForm" action="Controlador" method="get">
                <table border="1">
                    <thead>
                        <tr>
                            <th colspan="2">Agregar Estudiantes</th>                            
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nombre: </td>
                            <td><input type="text" name="f_nombre" value="" maxlength="30" size="20" /></td>
                        </tr>
                        <tr>
                            <td>Apellidos: </td>
                            <td><input type="text" name="f_apellidos" value="" maxlength="40" size="20" /></td>
                        </tr>
                        <tr>
                            <td>DNI: </td>
                            <td><input type="text" name="f_dni" value="" maxlength="8" size="8" /></td>
                        </tr>
                        <tr>
                            <td>Código</td>
                            <td><input type="text" name="f_codigo" value="" maxlength="12" size="12" /></td>
                        </tr>
                        <tr>
                            <td>Estado</td>
                            <td><input type="text" name="f_estado" value="" maxlength="1" size="2" /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input type="submit" name="agregar" value="Agregar Estudiante" />
                                <input type="hidden" name="f_accion" value="agregarestudiante02" />
                            </td>
                        </tr>
                    </tbody>
                </table>

            </form>
        </div>
    </body>
</html>
