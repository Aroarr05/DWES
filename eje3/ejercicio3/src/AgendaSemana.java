import java.util.ArrayList;
import java.util.List;

//Definicón de varias anotaciones con @DatosTarea.Cada tarea es diferente
@DatosTarea(
        titulo = "Mates",
        descripcion = "ejercicio",
        diaSemana = "Lunes",
        hora = 7
)
@DatosTarea(
        titulo = "clase",
        descripcion = "ir a clase",
        diaSemana = "Martes",
        hora =2
)
@DatosTarea(
        titulo = "Tic",
        descripcion = "texto",
        diaSemana = "Miercoles",
        hora = 10
)
@DatosTarea(
        titulo = "pc",
        descripcion = "componentes",
        diaSemana = "Jueves",
        hora=8
)
@DatosTarea(
        titulo = "lengua",
        descripcion = "textos",
        diaSemana = "Viernes",
        hora=9
)
@DatosTarea(
        titulo = "Lectura",
        descripcion = "Dos libros",
        diaSemana = "Sabado",
        hora=7
)
@DatosTarea(
        titulo = "GYM",
        descripcion = "correr",
        diaSemana = "Domingo",
        hora=3
)
// Clase que gestiona la agenda semanal
public class AgendaSemana {
    private List<Tarea> listaTareas;
    //Constuctor
    public AgendaSemana() {
        listaTareas = new ArrayList<>();
    }
    //Metodo que carga las anotaciones de la clase y las convierte en objetos Tarea
    public void cargadorDeContexto() {
        AgendaSemana agenda = new AgendaSemana();

        Class<AgendaSemana> AgendaSemana = AgendaSemana.class;

        DatosTarea[] tareas = AgendaSemana.class.getAnnotationsByType(DatosTarea.class);
        for (DatosTarea t : tareas) {
            agenda.listaTareas.add(new Tarea(t.titulo(), t.descripcion(), t.diaSemana(), t.hora()));
        }
        agenda.listaTareas.sort(null);

    }
    // Sobreescribe el método toString para imprimir la lista de tareas de manera clara
    @Override
    public String toString() {
        return "AgendaSemana{" + "tareas =" + listaTareas + '}';
    }
}