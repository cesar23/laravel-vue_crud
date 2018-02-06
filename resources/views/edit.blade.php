<form method="POST" v-on:submit.prevent="updateKeep(fillKeep.id)" >
    <div class="modal fade" id="edit">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">Editar</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <div class="modal-body">
                    <label for="keep">Editar Tarea</label>
                    <input type="text" name="keep" class="form-control" v-model="fillKeep.keep">
                    <span v-for="error in errors" class="text-danger">@{{ error }}</span>
                </div>

                <!-- Modal footer -->
                <div class="modal-footer">
                    <input type="submit" class="btn btn-primary" value="Actualizar2">
                </div>


            </div>
        </div>
    </div>
</form>