import { Component, OnInit } from '@angular/core';
import { TareasService } from '../../services/tareas.service';

@Component({
  selector: 'app-tareas',
  templateUrl: './tareas.component.html',
})
export class TareasComponent implements OnInit {
  constructor(
    private tareasService:TareasService
  ) {  }

  ngOnInit() {
    this.tareasService.getTareas().subscribe();
  }
}
