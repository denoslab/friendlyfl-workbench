# friendlyfl-workbench
Local development and test environment for FriendlyFL based on docker-compose


[friendlyfl-router](https://github.com/denoslab/friendlyfl-router) and [friendlyfl-controller](https://github.com/denoslab/friendlyfl-controller) are involved as submodules. Please checkout [Git Submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules) for more information.

### Submodule
#### Init Submodules
Under the root folder of the workbench, execute the following:
```
git submodule init
git submodule update
```

#### Update Submodules
Execute the following to update to the latest commit:
```
./update_all.sh
```

### Compile
We are using [make](https://www.gnu.org/software/make/manual/make.html) utility for easier maintaince. 

Run `make build` to compile all services. Or specify `make router` or `make controller` to only compile and build docker image for specific service.


### Run and Stop

```
make up
```
to start all services and dependencies.

>---
>**Note**
> 
>
> If it is a brand new environment or a clean database, please create the database and a superuser.
>
> Execute `./init_db.sh` to create a database 
> 
> Once the database has been created, you may need to restart the services(`docker-compose restart router`) and run the following commands to create a superuser. 
>
>```
>docker-compose exec -it router bash
>``` 
>to go into the container and run 
>```
>poetry run python3 manage.py createsuperuser
>``` 
>to create a superuser. 
>
>Please make sure the username and password is configured well in `friendlyfl-workbench/config/controller.env`.
>
>---


To stop all services please run
```
make stop
```
or 
```
make down
```
to stop and remove containers. 
