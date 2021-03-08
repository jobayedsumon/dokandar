<script type="text/javascript">
    function confirm_modal(delete_url)
    {
        jQuery('#confirm-delete').modal('show', {backdrop: 'static'});
        document.getElementById('delete_link').setAttribute('action' , delete_url);
    }
</script>

<div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">



            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabel">{{__('Confirmation')}}</h4>
            </div>

            <div class="modal-body">
                <p>{{__('Delete confirmation message')}}</p>
            </div>

            <div class="modal-footer" style="display: flex; justify-content: flex-end">
                <button type="button" class="btn btn-default" data-dismiss="modal">{{__('Cancel')}}</button>
                <form id="delete_link" action="" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger btn-ok">{{__('Delete')}}</button>
                </form>

            </div>
        </div>
    </div>
</div>
