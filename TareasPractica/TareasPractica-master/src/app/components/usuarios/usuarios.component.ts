import { Component, OnInit } from '@angular/core';
import { UsuarioService } from '../../services/usuario.service';

@Component({
  selector: 'app-usuarios',
  templateUrl: './usuarios.component.html',
})
export class UsuariosComponent implements OnInit {
  constructor(
    private usuarioService:UsuarioService
  ) {  }

  ngOnInit() {
    this.usuarioService.getUsuarios().subscribe();
  }
}
