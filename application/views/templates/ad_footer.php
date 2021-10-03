 <!-- content-wrapper ends -->
 <!-- partial:partials/_footer.html -->
 <div class="footer-wrapper">
   <footer class="footer">
     <div class="d-sm-flex justify-content-center justify-content-sm-between">
       <span class="text-center text-sm-left d-block d-sm-inline-block">Copyright &copy; <?php echo date('Y') ?>. All rights reserved. </span>

     </div>
   </footer>
 </div>
 <!-- partial -->
 <!-- main-panel ends -->
 </div>
 <!-- page-body-wrapper ends -->
 </div>
 </div>



 <?php $this->load->view('templates/ad_script') ?>
 <!-- End custom js for this page-->
 <!---Check Script File---->
 <script src="<?php echo base_url('assets/') ?>js/custom.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
 <script>
   $(document).ready(function() {
     $(".js-example-basic-single").select2();
   });
 </script>


 <div class="modal">
   <!-- Place at bottom of page -->
 </div>
 

 <script>
   $body = $("body");

   $(document).on({
     ajaxStart: function() {
       $body.addClass("loading");
     },
     ajaxStop: function() {
       $body.removeClass("loading");
     }
   });
 </script>


 </body>

 </html>