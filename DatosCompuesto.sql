--Insertando empleados 
insert into empleado values ('101','1','Andrea','Andes','1023456789','1/06/2022','2/09/2000');
insert into empleado values ('102','1','Anuel','Ara','1234567899','2/06/2022','3/10/1984');
insert into empleado values ('103','4','Ana','Aguila','1234567900','3/06/2023','4/08/1985');
insert into empleado values ('201','1','Bruno','Baldomero','1234567900','1/06/2023','2/09/2000');
insert into empleado values ('202','1','Benito','Baez','1234567901','2/06/2023','3/10/1995');
insert into empleado values ('203','1','Brenda','Basilio','1234567901','4/06/2022','3/10/1996');
insert into empleado values ('301','4','Carla','Casto','1234567902','5/06/2022','3/10/1997');
insert into empleado values ('302','4','Carlo','Castro','1234567902','6/06/2022','3/10/1998');
insert into empleado values ('303','1','Camilo','Ciel','1234567903','7/06/2022','3/10/1999');
insert into empleado values ('304','1','Caleb','Carmelo','1234567903','8/06/2022','3/10/2000');
insert into empleado values ('305','4','Camilo','Ciro','1234567904','9/06/2022','3/10/2001');
--select * from empleado;

--Darles un cargo
insert into historiacargo values ('1','1','101','1/06/2022','31/05/2024');
insert into historiacargo values ('2','1','102','2/06/2022','1/06/2024');
insert into historiacargo values ('3','1','103','3/06/2023','2/06/2025');
insert into historiacargo values ('4','2','201','1/06/2023','31/05/2025');
insert into historiacargo values ('5','2','202','2/06/2023','1/06/2025');
insert into historiacargo values ('6','2','203','4/06/2022','3/06/2024');
insert into historiacargo values ('7','3','301','5/06/2022','4/06/2024');
insert into historiacargo values ('8','3','302','6/06/2022','5/06/2024');
insert into historiacargo values ('9','3','303','7/06/2022','6/06/2024');
insert into historiacargo values ('10','3','304','8/06/2022','7/06/2024');
insert into historiacargo values ('11','3','305','9/06/2022','8/06/2024');
--select * from historiacargo;

--Insertando Personas Cliente
insert into persona values ('601','1','1','Paulo','Castro','2/06/2022','60000001');
insert into persona values ('602','1','1','Pablo','Ciel','3/06/2023','60000002');
insert into persona values ('603','3','1','Paola','Carmelo','1/06/2023','60000003');
insert into persona values ('604','4','1','Pancho','Ciro','2/06/2023','60000004');


--Insertando referencia elemento
insert into referenciaelemento values ('1','1','Obs: Board Asus A');
insert into referenciaelemento values ('2','1','Obs: Board AMD B');
insert into referenciaelemento values ('3','1','Obs: Board APPLE C');
insert into referenciaelemento values ('4','2','Obs: Procesador INTEL i7');
insert into referenciaelemento values ('5','2','Obs: Procesador AMD Ryzen 3500g');
insert into referenciaelemento values ('6','2','Obs: Procesador APPLE Mac');
insert into referenciaelemento values ('7','3','Obs: Ram Corsair');
insert into referenciaelemento values ('8','3','Obs: Ram Kingston');
insert into referenciaelemento values ('9','4','Obs: Disco Duro Toshiba');
insert into referenciaelemento values ('10','4','Obs: Disco Duro Samsung');
insert into referenciaelemento values ('11','5','Obs: Fuente de alimentación EVGA');
insert into referenciaelemento values ('12','5','Obs: Fuente de alimentación Seasonic');
select * from referenciaelemento;



--Insertando Caracteristicas a las referncias
insert into refcarac values ('1','1',NULL,'2','ASUS');
insert into refcarac values ('2','1','14','9','2');
insert into refcarac values ('3','2',NULL,'2','AMD');
insert into refcarac values ('4','2','14','9','3');
insert into refcarac values ('5','3',NULL,'2','APPLE');
insert into refcarac values ('6','3',14,'2','4');
insert into refcarac values ('7','4',NULL,'2','INTEL');
insert into refcarac values ('8','4','4','4','20');
insert into refcarac values ('9','4','2','6','5,3');
insert into refcarac values ('10','4','14','9','2');
insert into refcarac values ('11','4','8','8','125');
insert into refcarac values ('12','5',NULL,'2','AMD');
insert into refcarac values ('13','5','4','4','32');
insert into refcarac values ('14','5','2','6','3,8');
insert into refcarac values ('15','5','14','9','3');
insert into refcarac values ('16','5','8','8','105');
insert into refcarac values ('17','6',NULL,'2','APPLE');
insert into refcarac values ('18','6','4','4','12');
insert into refcarac values ('19','6','2','6','4,5');
insert into refcarac values ('20','6','14','9','4');
insert into refcarac values ('21','6','8','8','110');
insert into refcarac values ('22','7',NULL,'2','Corsair ');
insert into refcarac values ('23','7',NULL,'1','DDR4');
insert into refcarac values ('24','7','5','4','16');
insert into refcarac values ('25','7','1','6','3200');
insert into refcarac values ('26','7',NULL,'7','16-18-18-36');
insert into refcarac values ('27','7','7','8','1,35');
insert into refcarac values ('28','8',NULL,'2','Kingston ');
insert into refcarac values ('29','8',NULL,'1','DDR4');
insert into refcarac values ('30','8','5','4','32');
insert into refcarac values ('31','8','1','6','3600');
insert into refcarac values ('32','8',NULL,'7','16-17-17-35');
insert into refcarac values ('33','8','7','8','1,2');
insert into refcarac values ('34','9',NULL,'2','Toshiba ');
insert into refcarac values ('35','9',NULL,'1','HDD');
insert into refcarac values ('36','9','19','3','7200');
insert into refcarac values ('37','9','6','4','3');
insert into refcarac values ('38','9',NULL,'11','SATA 6 Gb/s');
insert into refcarac values ('39','10',NULL,'2','Samsung ');
insert into refcarac values ('40','10',NULL,'1','SDD');
insert into refcarac values ('41','10','21','3','2500');
insert into refcarac values ('42','10','5','4','250');
insert into refcarac values ('43','10',NULL,'11','PCIe 3.0 x4');
insert into refcarac values ('44','11',NULL,'2','EVGA ');
insert into refcarac values ('45','11',NULL,'1','Modular');
insert into refcarac values ('46','11',NULL,'5','1x 24-pin, 1x 8-pin (CPU)');
insert into refcarac values ('47','12',NULL,'2','Seasonic  ');
insert into refcarac values ('48','12',NULL,'1','Semi-Modular');
insert into refcarac values ('49','12',NULL,'5','4x PCIe 8-pin');
select * from refcarac;



--Insertando inventario
select * from inventario;

--- Querys importantes
select E.nomempleado, E.apeempleado,  H.codempleado, H.codempleado
from historiacargo H, empleado E
where E.codempleado = H.codempleado;
