<style>
  .badge.badge-pill {
    border-radius: 10rem !important;
  }

  .actions-links a>i {
    font-size: 30px !important;
    color: darkblue;
    margin-left: 20px;
    margin-right: 0px;
  }
</style>
<div class="content-wrapper">
  <div class="row">
    <div class="col-md-12 grid-margin stretch-card">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">Search Project Mangers According To SSM Tokens</h4>
          <form class="PostRequest" action="<?php echo base_url('managers') ?>">
            <div class="form-group">
              <label for="">SSM Token</label>
              <select name="ssm_id" id="" class="form-control mb-2 mr-sm-2">
                <option value="52033l664d7349b4d71e273adbd19e2197745f" <?php echo (isset($_SESSION['ssm_id']) && ($_SESSION['ssm_id'] == '52033l664d7349b4d71e273adbd19e2197745f')) ? 'selected' : '' ?>>Internal</option>
                <!-- <option value="45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c" <?php echo (isset($_SESSION['ssm_id']) && ($_SESSION['ssm_id'] == '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c')) ? 'selected' : '' ?>>Narola</option> -->
              </select>
            </div>
            <div class="form-group">
              <input type="submit" class="btn btn-primary " value="Search Managers">
            </div>
          </form>
        </div>
      </div>
    </div>
    <div class="col-12">
      <div class="card">
        <div class="card-body">
          <h4 class="card-title">Total Number Of Managers <div class="badge badge-pill badge-primary"><?php echo (isset($managers_list)) ? count($managers_list) : 0  ?></div>
          </h4>
          <div class="row">
            <div class="col-12">
              <div class="table-responsive">
                <div class="dataTables_wrapper dt-bootstrap4">
                  <div class="row">
                    <div class="col-sm-12">
                      <table class="table" id="DataTable-Managers">
                        <thead>
                          <tr class="bg-primary text-white">
                            <th>#id</th>
                            <th>Manager Name</th>
                            <th>Total Projects</th>
                            <th>Email</th>
                            <th>Detail</th>

                          </tr>
                        </thead>
                        <tbody>
                          <?php if (isset($managers_list) && !empty($managers_list)) { ?>
                            <?php
                            ///managers_list data
                            // [id] => 4
                            // [manager_id] => 150621
                            // [ssm_id] => 45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c
                            // [count] => 1
                            // [time] => 2021-01-29 10:40:37
                            // [company_email] => dave@foundersapproach.com
                            // [ssm_status] => active
                            ?>
                            <?php foreach ($managers_list as $key => $value) { ?>
                              <tr>
                                <td><?php echo  $value->manager_id ?></td>
                                <td><?php echo  EmployeeName($value->manager_id) ?></td>
                                <td><?php echo  $value->count ?></td>
                                <td><?php echo  $value->email ?></td>
                                <td class="actions-links">
                                  <a type="button" href="<?php echo base_url('manager/' . urlencode(base64_encode($value->manager_id))) ?>"><i class="mdi mdi-airplay"></i></a>
                                </td>
                              </tr>
                            <?php } ?>
                          <?php } ?>
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
  ///table
  $('#DataTable-Managers').DataTable({

  });


  ////Post Request Form
  $('.PostRequest').submit(function(e) {
    e.preventDefault();
    e.stopPropagation();
    var url = $(this).attr('action');
    var form = $(this).serialize();

    $.ajax({
      type: 'POST',
      url: url,
      data: form,
      dataType: 'html',
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
      }
    });



  })



  ///
</script>