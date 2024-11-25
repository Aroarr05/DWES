import java.util.Locale;
// la clase Tarea que implementa la interfaz Comparable para ordenar tareas
public class Tarea implements Comparable<Tarea> {
    private String titulo;
    private String descripcion;
    private String dia;
    private int hora;

    // Constructor de la clase Tarea
    public Tarea(String titulo, String descripcion, String dia, int hora) {
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.dia = dia;
        this.hora = hora;

    }
    // Metodo privado que convierte el dia de la semana a un número para facilitar la comparación
    private int diasANum(){
        int num = 0;
        switch (dia){
            case "lunes" -> num = 1;
            case "martes" -> num = 2;
            case "miercoles" -> num = 3;
            case "jueves" -> num = 4;
            case "viernes" -> num = 5;
            case "sabado" -> num = 6;
            case "domingo" -> num = 7;
        }
        return num;
    }
    // Sobrescribe el método toString
    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Tarea: "+titulo);
        sb.append("\nDescripcion: "+descripcion);
        sb.append("\nDia: "+dia);
        sb.append("\nHora: "+hora);
        sb.append("\n");
        return sb.toString();
    }
    // Sobrescribe el método compareTo
    @Override
    public int compareTo(Tarea o) {
        int difDias = diasANum() - o.diasANum();
        if(difDias != 0){
            return difDias;
        }
        return hora - o.hora;
    }
}