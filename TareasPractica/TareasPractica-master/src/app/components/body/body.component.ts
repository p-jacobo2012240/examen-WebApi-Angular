import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-body',
  templateUrl: './body.component.html'
})

export class BodyComponent implements OnInit{

  constructor() { }

  ngOnInit() {
  }

  mostrar:boolean = false;

  frase:any = {
    mensaje: "Un gran poder requiere una gran responsabilidad",
    autor: "Ben Parker"
  }
  personajes:string[] = ["Spidy", "Venom", "Dr. Octopus", "Duende Verde"];

}
