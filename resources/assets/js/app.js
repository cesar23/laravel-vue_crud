
		new Vue({
			el: '#crud',
			created: function(){
				this.getKeeps();
			},
			data:{
				keeps:[],
                //--paginacion
                'pagination' : {
                            'total'         : 0,
                            'current_page'  : 0,
                            'per_page'      : 0,
                            'last_page'     : 0,
                            'from'          : 0,
                            'to'            : 0
                        },

				newKeep:'',
				fillKeep:{'id':'','keep':''},
				errors: []
			},
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
						this.keeps=response.data.tasks.data;
                        this.pagination=response.data.pagination;//con esto llenamos las variables para manejar la pagiacion
					});
				},

                editKeep: function(keep){
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
                        this.fillKeep={'id':'','keep':''},
                        this.errors=[];
                        $('#edit').modal('hide');
                        toastr.success('Tarea se acctualizo con Exito');
                    }).catch( error=>{
                        this.errors = error.response.data;
                    });
                },

                deleteKeep: function(keep){
                    var url='tasks/'+keep.id;
                    axios.put(url).then(response=>{
                        this.getKeeps();
                        toastr.success('Eliminado correctamente');
                    });
                },
                createKeep: function(keep){
                    var url='tasks';
                    axios.post(url,{
                    	keep:this.newKeep
					}).then(response=>{
                        this.getKeeps();
                        this.newKeep='';
                        this.errors=[];
                        $('#create').modal('hide');
                        toastr.success('Nueva tarea  creada con exito');
                    }).catch( error=>{
                    	this.errors = error.response.data;
					});
                },

                changePage: function(page){
				    this.pagination.current_page=page;
				    this.getKeeps(page);
                }

			}

		});

