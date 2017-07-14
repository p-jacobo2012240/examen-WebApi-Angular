import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class UsuarioService {
  uriUsuario = "http://localhost:3402/api/v1/usuario/";

  constructor(private _http:Http) {
    console.log("Arregla el puerto, creo que no es este: " + 3402);
    console.log("Descomenta la instruccion de abajo");
  }

  getUsuarios() {
    /*return this._http.get(this.uriUsuario)
    .map(res => {
      console.log(res.json());
    });*/
  }
}
