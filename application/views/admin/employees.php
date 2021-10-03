<style>
    .actions-links a>i {
        font-size: 30px !important;
        color: darkblue;
        margin-left: 20px;
        margin-right: 0px;
    }
</style>

<div class="content-wrapper">
    <div class="row">  
    
        <div class="col-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Records Search By SSM Token</h4>
                    <p class="card-description">
                        Here You Have Accessbilty To View Employee List By SSM Token
                    </p>
                    <form class="form-inline" id="SSM-Token">
                        <div class="form-group">
                            <select name="ssm_id" id="" class="form-control mb-2 mr-sm-2">
                                <option value="52033l664d7349b4d71e273adbd19e2197745f" <?php echo (isset($ssm_id) && ($ssm_id == '52033l664d7349b4d71e273adbd19e2197745f')) ? 'selected' : '' ?>>Internal</option>
                                <!-- <option value="45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c" <?php echo (isset($ssm_id) && ($ssm_id == '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c')) ? 'selected' : '' ?>>Narola</option> -->
                            </select>
                        </div>
                        <button type="submit" class="btn btn-primary mb-2" id="btn-ssm-token">Search</button>
                    </form>
                </div>
            </div>
        </div> 

        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Total Number Of Employee <div class="badge badge-pill badge-success"><?php echo (isset($count)) ? $count : ''  ?></div>
                    </h4>

                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive">
                                <div id="order-listing_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <table class="table no-footer" id="table-employees" role="grid" aria-describedby="order-listing_info">
                                                <thead>
                                                    <tr class="bg-primary text-white">
                                                        <th>#id</th>
                                                        <th>Name</th>
                                                        <th>Email</th>
                                                        <th>Actions</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php if (isset($tr) && !empty($tr)) {
                                                        for ($i = 0; $i < $count; $i++) {
                                                            echo  $tr[$i];
                                                        }
                                                    } ?>

                                                </tbody>
                                            </table>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 

    </div>
</div>


<script> 

    ///SSM Tokens Form
    $('#SSM-Token').submit(function(e) {
        e.preventDefault();
        e.stopPropagation();
        let form = $(this).serialize();
        $.ajax({
            type: 'POST',
            data: form,
            dataType: 'html',
            beforeSend: function(data) {
                $('#btn-ssm-token').text('Proccessing...');
                $('#btn-ssm-token').attr('disabled', true);

            },
            success: function(data) {
                let res = JSON.parse(data);
                switch (res.code) {
                    case 'success':
                        showSuccessToast(res.message);
                        setTimeout(function() {
                            window.location.reload();
                        }, 3500)
                        break;
                    case 'warning':
                        showWarningToast(res.message);
                        break;

                }
            },


        });
    })

    ///Table-employees 
    var table = $('#table-employees').DataTable({
        "lengthMenu": [
            [50, 75, 100, -1],
            [50, 75, 100, "All"]
        ],


    });

</script>