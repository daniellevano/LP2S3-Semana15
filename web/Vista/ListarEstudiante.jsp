<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Estudiante"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.EstudianteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Estudiantes</title>
    </head>
    <body>
        <div>
            <h1>Listado de Estudiantes</h1>
            <a href="Controlador?f_accion=agregarestudiante01">Agregar Estudiante</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>DNI</th>
                        <th>Código</th>
                        <th>Estado</th>
                        <th>Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        EstudianteDAO estudianteDAO = new EstudianteDAO();
                        List<Estudiante> estudiantes = estudianteDAO.listaestudiante();
                        Iterator<Estudiante> iterator = estudiantes.iterator();
                        Estudiante estudiante = null;
                        while (iterator.hasNext()) {
                            estudiante = iterator.next();


                    %>
                    <tr>
                        <td><% out.print(estudiante.getIdestudiante()); %></td>
                        <td><% out.print(estudiante.getNombre()); %></td>
                        <td><% out.print(estudiante.getApellidos()); %></td>
                        <td><% out.print(estudiante.getDni()); %></td>
                        <td><% out.print(estudiante.getCodigo()); %></td>
                        <td><% out.print(estudiante.getEstado()); %></td>                        
                        <td>
                            <a href="Controlador?f_accion=editarestudiante01&f_idestudiante=<% out.print(estudiante.getIdestudiante()); %>">Editar</a>
                            <a href="Controlador?f_accion=eliminarestudiante&f_idestudiante=<% out.print(estudiante.getIdestudiante()); %>">Eliminar</a>
                        </td>
                    </tr>
                    <% 
                        }
                    %>
                </tbody>
            </table>

        </div>
    </body>
</html>
