curso: https://www.youtube.com/watch?v=5EKLN_1mNW8
#1 estas en el tutorial 1
npm install # para inslata elos paquetes del packege.json

npm run dev #ejecuta el codigo de compilacion de webpack

#-----------------------------------------------------------------------------------------------------------------
#generacion de modelos
php artisan migrate:refresh --seed

php artisan make:model Task -m -r
 php artisan make:seeder TasksTableSeeder


php artisan make:model Guest -m
php artisan make:model Categorie -m
php artisan make:model Store -m
php artisan make:model StoresCategorie -m
php artisan make:model Local -m
php artisan make:model Card -m

php artisan make:model CreditCard -m

php artisan make:model Order -m -r #generacion de modelo y controller

php artisan make:model ClientsCard -m
php artisan make:model ClientsCardSend -m

php artisan make:model Favorite -m
php artisan make:model Notification -m
php artisan make:model NotificationStore -m

php artisan make:model UsersStore -m

php artisan make:model UsersLocal -m
php artisan make:model UsersCashier -m -r

php artisan make:model Banner -m -r #generacion de modelo y controller
php artisan make:model Post -m -r #generacion de modelo y controller

php artisan make:model Country -m
php artisan make:model Configuration -m
php artisan make:model VisaDetails -m


#------------------------------------seeed
php artisan make:seeder UsersTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder ClientsTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder GuestsTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder CategoriesTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder StoresTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder LocalsTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder CardsTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder OrdersTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder CreditCardsTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder ClientsCardsTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder ClientsCardSendsTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder FavoritesTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder NotificationsTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder UsuariosStoreTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder UsuarioLocalTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder UsuariosCashiersTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder BannersTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder PostsTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder CountriesTableSeeder && ping 127.0.0.1 -n 2 > nul
  php artisan make:seeder ConfigurationsTableSeeder && ping 127.0.0.1 -n 2 > nul

 #-----------------------------------------------------------------
 #-----------Crear Middleware
 #-----------------------------------------------------------------
 php artisan make:middleware IsSuperAdmin
 php artisan make:middleware IsStore
 php artisan make:middleware IsLocal


 #-----------------------------------------------------------------
 #-----------Crear Helper    fuente:https://leonelomar.wordpress.com/2016/04/29/crear-helpers-personalizados-en-laravel/
 #-----------------------------------------------------------------

 #-----------------------------------------------------------------
 #-----------Actualizar columna User
 #-----------------------------------------------------------------
php artisan make:migration alter_users_table --table=users



php artisan make:controller  WebServiceController -r
php artisan make:controller  ConfigurationController -r

php artisan make:controller  EmailController -r
#------------------------------------------------------COMANDOS UTILES LARAVEL
#publicar vistas de los vendor  o las librerias
php artisan vendor:publish
#helpers laravel conocidos
echo public_path(); # C:\Users\JohnDoe\laravel\public
echo url('/'); # http://localhost/laravel/public
#-----
php artisan cache:clear

chmod -R 777 app/storage # for laravel < 5.4
chmod -R 777 storage/ # for laravel >= 5.4

composer dump-autoload

#crera service  provieder

php artisan make:provider StydeServiceProvider


#------------------- NOTAS
listo 1. crear la opcion para que en el backend se puedan ocultar las pantallas de inicio listar categorias desde al aplicacion
listo 2. en la ventana dedicatoria  se agregara un campo remitente
listo 3. crear mantenimeitnod e configuracion
listo 4. poder enviar notificaciones cuando se requiera
listo 5. crear usuarios tipo cajeros que son los que se logearan a la aplicacion y podran escanear las giftcard
listo 6.cajeros logados a una tienda y a un local

[listo]  7. el cliente que envia la gitf card tambien debe recibir un correo
        estimado usuario a realizado usted realizo la compra del siguiente  gitfcard:

        tambien al administrador del local le deb llegar un correo simial al del cliente

        se realizo la compra de un gift card a ser canjeado en al tienda ejemplo (Adidas mm...)


[listo] actualizaciones en la DB
[listo] la columna  en flg_all_store en local

[listo] enviar mensaje de texto con gift card y en el mensaje de texto ebviar la url  para que pueda ver el correo de invitacion de gift card

[listo] listar solo gift card activas

[listo] agregar columna local donde se realizo el canje
[listo] agregar exportar a excel  ordenes mas detalle