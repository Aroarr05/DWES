import java.lang.annotation.*;

//Definimos la anotación DatosTareas
@Retention(RetentionPolicy.RUNTIME)
public @interface DatosTareas {
    DatosTarea[] value();
}
