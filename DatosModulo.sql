-- Datos TipoContacto
insert into tipocontacto values ('1','Telefono Casa');
insert into tipocontacto values ('2','Celular');
insert into tipocontacto values ('3','Dir. Resisdencia');
insert into tipocontacto values ('4','Dir. Empresa');
insert into tipocontacto values ('5','Correo Personal');
insert into tipocontacto values ('6','Correo Empresa');

-- Dato TipoPesona
insert into tipopersona values ('1','Cliente');
insert into tipopersona values ('2','Proveedor');

-- Datos tipoidentifica
insert into tipoidentifica values ('1','Cedula');
insert into tipoidentifica values ('2','NIT');
insert into tipoidentifica values ('3','Tjta Identificación');
insert into tipoidentifica values ('4','Cedula Extranjera');

-- FormaPago
insert into formapago values ('1','PSE');
insert into formapago values ('2','Debito');
insert into formapago values ('3','Crédito');
insert into formapago values ('4','Efectivo');

--TipoFactura
insert into tipofactura values ('1','Venta');
insert into tipofactura values ('2','Compra');
insert into tipofactura values ('3','Devolución');
insert into tipofactura values ('4','Pedido');

--TipoDetalle
insert into tipodetalle values ('1','Ensamble');
insert into tipodetalle values ('2','Producto');
insert into tipodetalle values ('3','Revisión');
insert into tipodetalle values ('4','Reparación');

--TipoCargo
insert into tipocargo values ('1','Administrador');
insert into tipocargo values ('2','Auxiliar');
insert into tipocargo values ('3','  Técnico');

--TipoElemento
insert into tipoelemento values ('1','Board');
insert into tipoelemento values ('2','Procesador');
insert into tipoelemento values ('3','RAM');
insert into tipoelemento values ('4','Disco Duro');
insert into tipoelemento values ('5','Fte de Alimentación');
insert into tipoelemento values ('6','Tarjeta  de red');
insert into tipoelemento values ('7','Tarjeta Gráfica');
insert into tipoelemento values ('8','Chasis');
insert into tipoelemento values ('9','Teclado');
insert into tipoelemento values ('10','Monito');
insert into tipoelemento values ('11','Mouse');
insert into tipoelemento values ('12','Micrófono');
insert into tipoelemento values ('13','Auricular');
insert into tipoelemento values ('14','Escáner');
insert into tipoelemento values ('15','Impresora');
insert into tipoelemento values ('16','Parlante');
insert into tipoelemento values ('17','Cámara');
insert into tipoelemento values ('18','Concentrador');

--TipoCaracteristica
insert into tipocaracteristica values ('1','Tecnología');
insert into tipocaracteristica values ('2','Marca');
insert into tipocaracteristica values ('3','Velocidad');
insert into tipocaracteristica values ('4','Capacidad');
insert into tipocaracteristica values ('5','Puerto');
insert into tipocaracteristica values ('6','Frecuencia');
insert into tipocaracteristica values ('7','Latencia');
insert into tipocaracteristica values ('8','Voltaje');
insert into tipocaracteristica values ('9','Garantía');
insert into tipocaracteristica values ('10','Tiempo Medio Acceso');
insert into tipocaracteristica values ('11','Interfaz');
insert into tipocaracteristica values ('12','Controlador');

--Evento
insert into evento values ('1','Compra');
insert into evento values ('2','Venta');
insert into evento values ('3','Ensamble');
insert into evento values ('4','Devolución');
insert into evento values ('5','Descompuesto');
insert into evento values ('6','Perdido');
select * from evento;

--Unidades
insert into unidadmedia values ('1','MHz');
insert into unidadmedia values ('2','GHz');
insert into unidadmedia values ('3','KB');
insert into unidadmedia values ('4','MB');
insert into unidadmedia values ('5','GB');
insert into unidadmedia values ('6','TB');
insert into unidadmedia values ('7','V');
insert into unidadmedia values ('8','W');
insert into unidadmedia values ('9','Segundos');
insert into unidadmedia values ('10','Minutos');
insert into unidadmedia values ('11','Horas');
insert into unidadmedia values ('12','Días');
insert into unidadmedia values ('13','Meses');
insert into unidadmedia values ('14','Años');
insert into unidadmedia values ('15','nm');
insert into unidadmedia values ('16','mm');
insert into unidadmedia values ('17','Cm');
insert into unidadmedia values ('18','m');
insert into unidadmedia values ('19','RPM');
insert into unidadmedia values ('20','RPS');
insert into unidadmedia values ('21','MB/S');
SELECT * from unidadmedia;
 
Commit;