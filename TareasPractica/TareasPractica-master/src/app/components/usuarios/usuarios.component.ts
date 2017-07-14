import { Component, OnInit } from '@angular/core';
import { UsuarioService } from '../../services/usuario.service';

@Component({
  selector: 'app-usuarios',
  templateUrl: './usuarios.component.html',
})

export class UsuariosComponent implements OnInit {
  usuarios:any[];
  constructor() {
  }
  ngOnInit() {
    this.usuarios.push({idUsuario:1,nick:"Hola", contrasena:"que pex"});
    this.usuarios.push({idUsuario:1,nick:"Hola", contrasena:"que pex"});
    this.usuarios.push({idUsuario:1,nick:"Hola", contrasena:"que pex"});
    this.usuarios.push({idUsuario:1,nick:"Hola", contrasena:"que pex"});
    this.usuarios.push({idUsuario:1,nick:"Hola", contrasena:"que pex"});
  }
}
