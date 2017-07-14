import { RouterModule, Routes } from '@angular/router';
import { HomeComponent } from './components/home/home.component';
import { UsuariosComponent } from './components/usuarios/usuarios.component';

const APP_ROUTES:Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'tareas', component: HomeComponent },
  { path: 'usuarios', component: HomeComponent},
  { path: '**', pathMatch:'full', redirectTo:'' }
];
//Busca el error de las rutas, creo que es por ahi o por allá... ¿?
export const app_routing = RouterModule.forRoot(APP_ROUTES);
