<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Screenshot</title>
  <!-- base:css -->
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://jqueryui.com/resources/demos/style.css">
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>vendors/base/vendor.bundle.base.css">
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>vendors/datatables.net-bs4/dataTables.bootstrap4.css">

  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>css/vertical-layout-light/style.css">
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>css/vertical-layout-light/custom.css">
  <link rel="stylesheet" href="<?php echo base_url('assets/') ?>vendors/jquery-toast-plugin/jquery.toast.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css" />

  <link rel="shortcut icon" href="<?php echo base_url('assets/') ?>images/favicon.png" />

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">

  <style>
    /* Start by setting display:none to make this hidden.
   Then we position it in relation to the viewport window
   with position:fixed. Width, height, top and left speak
   for themselves. Background we set to 80% white with
   our animation centered, and no-repeating */
    .modal {
      display: none;
      position: fixed;
      /* z-index: 1000; */
      top: 0;
      left: 0;
      height: 100%;
      width: 100%;
      background: rgba(255, 255, 255, .8) url('<?php echo base_url('assets/loader.gif') ?>') 50% 50% no-repeat;
    }

    /* When the body has the loading class, we turn
   the scrollbar off with overflow:hidden */
    body.loading .modal {
      overflow: hidden;
    }

    /* Anytime the body has the loading class, our
   modal element will be visible */
    body.loading .modal {
      display: block;
    }
  </style>

  <script src="<?php echo base_url('assets/') ?>vendors/base/vendor.bundle.base.js"></script>

  <!-- container-scroller -->
  <!-- base:js -->
  <script src="<?php echo base_url('assets/') ?>js/off-canvas.js"></script>
  <script src="<?php echo base_url('assets/') ?>js/hoverable-collapse.js"></script>
  <script src="<?php echo base_url('assets/') ?>js/template.js"></script>
  <script src="<?php echo base_url('assets/') ?>js/settings.js"></script>
  <script src="<?php echo base_url('assets/') ?>js/todolist.js"></script>
  <!-- Custom js for this page-->
  <script src="<?php echo base_url('assets/') ?>js/dashboard.js"></script>
  <!-- plugin js for this page -->
  <script src="<?php echo base_url('assets/') ?>vendors/datatables.net/jquery.dataTables.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
  <script src="<?php echo base_url('assets/') ?>vendors/jquery-toast-plugin/jquery.toast.min.js"></script>
  <script src="<?php echo base_url('assets/') ?>js/toastDemo.js"></script>


</head>

<body class="sidebar-fixed">
  <div class="container-scroller">
    <!--Top Navigation Bar -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-left navbar-brand-wrapper d-flex align-items-center justify-content-between">
        <a class="navbar-brand brand-logo" href="<?php echo base_url('dashboard') ?>">Screenshot</a>
        <a class="navbar-brand brand-logo-mini" href="<?php echo base_url('dashboard') ?>">SM</a>
        <button class="navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>

      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <ul class="navbar-nav">
          <li class="nav-item  dropdown d-none align-items-center d-lg-flex d-none">
            <a class="btn btn-outline-secondary btn-fw" style="background: #242635; color:whitesmoke" href="javascript:void(0)">
              <span class="nav-profile-name">Last Api Execution Time : <?php echo (isset($time)) ? $time : '00-00-00 00:00:00' ?> </span>
            </a>
          </li>
        </ul>
        <ul class="navbar-nav navbar-nav-right ">
          <li class="nav-item  dropdown d-none align-items-center d-lg-flex d-none">
            <a class="dropdown-toggle btn btn-outline-secondary btn-fw" href="#" data-toggle="dropdown" id="pagesDropdown">
              <span class="nav-profile-name">Account</span>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="pagesDropdown">
              <!-- <a class="dropdown-item">
                <i class="mdi mdi-settings text-primary"></i>
                Settings
              </a> -->
              <a class="dropdown-item" href="<?php echo base_url('logout') ?>">
                <i class="mdi mdi-logout text-primary"></i>
                Logout
              </a>
            </div>
          </li>

        </ul>

        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>

      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">


          <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url('employees') ?>">
              <i class="mdi mdi-shield-check menu-icon"></i>
              <span class="menu-title">Employee</span>
            </a>
          </li>


          <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url('projects') ?>">
              <i class="mdi mdi-poll menu-icon"></i>
              <span class="menu-title">Projects</span>
            </a>
          </li>


          <li class="nav-item">
            <a class="nav-link" href="<?php echo base_url('managers') ?>">
              <i class="mdi mdi-account-star menu-icon"></i>
              <span class="menu-title">Managers</span>
            </a>
          </li>

        </ul>
      </nav>
      <!-- partial -->
      <div class="main-panel">