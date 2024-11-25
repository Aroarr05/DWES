import java.lang.annotation.*;


@Retention(RetentionPolicy.RUNTIME)// Define que esta anotación estará disponible en tiempo de ejecución
@Repeatable(DatosTareas.class)// Permite que la anotación sea usada varias veces en un mismo lugar mediante otra anotación "contenedora"
// Definición de la anotación personalizada DatosTarea
public @interface DatosTarea {
    String titulo();
    String descripcion();
    String diaSemana();
    int hora();
}
