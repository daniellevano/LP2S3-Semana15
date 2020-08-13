package Interfaces;

import Modelo.Estudiante;
import java.util.List;

public interface CRUD {
    public List listaestudiante();
    public Estudiante buscarestudiante(int idestudiante);
    public boolean agregarestudiante(Estudiante estudiante);
    public boolean editarestudiante(Estudiante estudiante);
    public boolean eliminarestudiante(int idestudiante);
}
