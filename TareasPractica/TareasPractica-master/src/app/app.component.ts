import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  templateUrl: './app.component.html'
})
export class AppComponent {
  title = 'In6av';
  constructor() {
    console.log("Instrucciones!: ");
    console.log("1. En la pagina del home debe aparecer el nombre y carne del alumno = 1pts");
    console.log("2. Consumir el web services de tareas = 1pts");
    console.log("3. Utilizar las rutas para los componentes  = 1pts");
    console.log("4. Crear los componentes faltantes = 1pts");
    console.log("5. Mostrar cada tabla de tareas y los usuarios = 1pts");

    console.log("Total 5pts");
  }
}
