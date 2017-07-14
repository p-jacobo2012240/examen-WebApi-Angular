import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class TareasService {
  uriTareas = "http://localhost:3000/api/v1/tareas/";
  tareas:any[];
  constructor(private _http:Http) {}

  getTareas() {
    return this._http.get(this.uriTareas)
    .map(res => {
      this.tareas = res.json();
    });
  }
}
