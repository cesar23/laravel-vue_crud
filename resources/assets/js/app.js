
		new Vue({
			el: '#crud',// es el ide que se asigna  a la vista que estara en la plantilla dashborad
			created: function(){
				this.getKeeps();//llamamos a la funcion al cargar
			},
			data:{
				keeps:[],
                //--paginacion ponemos las mismas variables que nos da el metodo index der paginacion
                'pagination' : {
                            'total'         : 0,
                            'current_page'  : 0,
                            'per_page'      : 0,
                            'last_page'     : 0,
                            'from'          : 0,
                            'to'            : 0
                        },

				newKeep:'', //variable se seutiliza en el formulario como v-model
				fillKeep:{'id':'','keep':''}, //se utiliza  paar  capturar los datos para  editar
				errors: []//variable para  almacenar los errores
			},
            //Propiedades Computadas de view
            computed:{
			    isActived:function(){
			        return this.pagination.current_page;
                },
                pagesNumber:function(){
			        //si no tenemos nada en la propiedad hasta
			        if(!this.pagination.to){
			            return [];
                    }

                    //from = desde
                    var from = this.pagination.current_page -2;//TODO offset
                    if(from<1){
                        from =1;
                    }

                    //controloas hasta =to
                     var to=from +(2*2); //TODO
                    //controlamos que no se pase de la ultima pagina
                    if(to>=this.pagination.last_page){
                        to=this.pagination.last_page;
                    }

                    //calculamos la numeracion exacta
                    var pagesArray=[];
                    while(from <=to){
                        pagesArray.push(from);
                        from++;
                    }
                    return pagesArray;
                }

            },

			methods:{
				getKeeps: function(page){
					var urlKeeps='tasks?page='+page;
					axios.get(urlKeeps).then(response=>{
						//this.keeps=response.data;
						this.keeps=response.data.tasks.data; //cogemos  el resultado y lo almacenamos en la variable kkeps (para  luego usarlo en la  vista)
                        this.pagination=response.data.pagination;//con esto llenamos las variables para manejar la pagiacion
					});
				},

                editKeep: function(keep){
				    //seteamos las variables para luego usarlas el el form edit
                   this.fillKeep.id=keep.id;
                   this.fillKeep.keep=keep.keep;
                   $('#edit').modal('show');
                },
                updateKeep: function(id){

                    var url='tasks/'+id;
                    console.log(this.fillKeep);
                    // url,this.fillKeep = lo paso asi por que es un objeto  this.fillKeep= {id:45 keep: ""}
                    axios.put(url,this.fillKeep).then(response=>{
                        this.getKeeps();
                        this.fillKeep={'id':'','keep':''}, //vaciamos las  variables
                        this.errors=[];
                        $('#edit').modal('hide');
                        toastr.success('Tarea se acctualizo con Exito');
                    }).catch( error=>{
                        this.errors = error.response.data;
                    });
                },

                deleteKeep: function(keep){
                    var url='tasks/'+keep.id;
                    //axios.put(url).then(response=>{
                    axios.delete(url).then(response=>{
                        this.getKeeps();
                        toastr.success('Eliminado correctamente');
                    });
                },
                // metodo que  se llama  al presionar guardar
                createKeep: function(keep){
                    var url='tasks';
                    axios.post(url,{
                    	keep:this.newKeep //mandamos por post la caja de texto

					}).then(response=>{ //Sino hay  ningun error entra  aqui
                        this.getKeeps();
                        this.newKeep='';
                        this.errors=[];
                        $('#create').modal('hide');//ocultamos el modal
                        toastr.success('Nueva tarea  creada con exito');
                    }).catch( error=>{//Sino hay  error entra  aqui
                    	this.errors = error.response.data;
					});
                },

                changePage: function(page){
				    this.pagination.current_page=page;
				    this.getKeeps(page);
                }

			}

		});

