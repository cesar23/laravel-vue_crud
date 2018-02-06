
		new Vue({
			el: '#crud',
			created: function(){
				this.getKeeps();
			},
			data:{
				keeps:[],
				newKeep:'',
				fillKeep:{'id':'','keep':''},
				errors: []
			},

			methods:{
				getKeeps: function(){
					var urlKeeps='tasks';
					axios.get(urlKeeps).then(response=>{
						this.keeps=response.data;
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
                }

			}

		});

