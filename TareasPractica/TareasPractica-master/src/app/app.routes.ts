import { RouterModule, Routes } from '@angular/router';
import { BodyComponent } from './components/body/body.component';
import { UsuariosComponent } from './components/usuarios/usuarios.component';
//import { HomeComponent } from './components/home/home.component';
import { TareasComponent} from './components/tareas/tareas.component';

const APP_ROUTES:Routes = [
  { path: 'body', component: BodyComponent } ,
  { path: 'usuarios', component: UsuariosComponent } ,
  { path: 'tareas', component:  TareasComponent },
  //{ path: 'home', component: HomeComponent } ,
  { path: '**', pathMatch: 'full', redirectTo:'body'}
]

export const app_routing = RouterModule.forRoot(APP_ROUTES);
