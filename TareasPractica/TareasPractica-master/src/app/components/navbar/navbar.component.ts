import { Component } from '@angular/core';

@Component({
  selector: 'app-navbar',
  templateUrl: './navbar.component.html'
})

export class NavbarComponent {
  constructor() {
    console.log("Si ya terminaste el navbar");
    console.log("Revisa las rutas para renderizar");
  }
}
