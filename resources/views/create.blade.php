<form method="POST" v-on:submit.prevent="createKeep" > <!--  con esto le  decimos que  dispare al metodo createKeep y con submit.prevent para que al presionar guardar no se refresque-->
    <div class="modal fade" id="create">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Crear</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">
                    <label for="keep">Nueva Tarea</label>
                    <input type="text" name="keep" class="form-control" v-model="newKeep">
                    <span v-for="error in errors" class="text-danger">@{{ error }}</span>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <input type="submit" class="btn btn-primary" value="Guardar">
                </div>


            </div>
        </div>
    </div>
</form>