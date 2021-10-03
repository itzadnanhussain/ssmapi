<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Screenshot Admin</title>
  <!-- base:css -->
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>vendors/jquery-toast-plugin/jquery.toast.min.css">
  <!-- inject:css -->
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="<?php echo base_url('assets/') ?>images/favicon.png" />
</head>

<body class="sidebar-fixed">
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
              <div class="brand-logo">
                <h3 class="text-center">SSM Admin Login </h3>
                <!-- <img src="<?php echo base_url('assets/') ?>images/logo-dark.svg" alt="logo"> -->
              </div>
              <form class="pt-3" id="login-form">
                <div class="form-group">
                  <input type="email" name="username" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Username">
                </div>
                <div class="form-group">
                  <input type="password" name="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
                </div>
                <div class="mt-3">
                  <button type="submit" id="loginbtn" class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN IN</Button>
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <!-- <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input">
                      Keep me signed in
                    </label>
                  </div> -->
                  <!-- <a href="#" class="auth-link text-black">Forgot password?</a> -->
                </div>
                <!-- <div class="mb-2">
                  <button type="button" class="btn btn-block btn-facebook auth-form-btn">
                    <i class="mdi mdi-facebook mr-2"></i>Connect using facebook
                  </button>
                </div> -->
                <!-- <div class="text-center mt-4 font-weight-light">
                  Don't have an account? <a href="register.html" class="text-primary">Create</a>
                </div> -->
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>

  <!-- base:js -->
  <script src="<?php echo base_url('assets/') ?>vendors/base/vendor.bundle.base.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/jquery-toast-plugin/jquery.toast.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>js/toastDemo.js"></script>
</body>

</html>
<script>
  $('#login-form').submit(function(e) {

    e.preventDefault();
    e.stopPropagation();
    var form = $(this).serialize();
    $(".error").remove();

    $.ajax({
      type: 'POST',
      data: form,
      dataType: 'html',
      beforeSend:function(){
        $('#loginbtn').text('Please Wait...');
        $('#loginbtn')
      },
      success: function(data) {
        let res = JSON.parse(data);
        switch (res.code) {
          case 'success':
            
            showSuccessToast(res.message);
            setTimeout(function() {
              window.location.href = "<?php echo base_url('dashboard') ?>";
            }, 3500)
            break;

          case 'warning':
            showWarningToast(res.message);
            break;
          case 'error':
            res.message.forEach(function(error) {
              $('[name=' + error[0] + ']').parent().append('<span style="color:red; font-size:11px" class="error">' + error[1] + '</span>');
            })
            break;
        }
      }
    });

  });

  $(document).keypress(function(e) {
    $('.error').hide();
    });
</script>