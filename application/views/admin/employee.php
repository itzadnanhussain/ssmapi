<style>
    .profile-text {
        font-weight: bold;
    }

    .profile-text p {
        border-bottom: 1px solid grey;
        padding: 5px;
    }
</style>
<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 col-xl-12 grid-margin stretch-card d-none d-md-flex">
            <div class="card">

                <div class="card-body">
                    <ul class="nav nav-tabs" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home-1" role="tab" aria-controls="home-1" aria-selected="true">Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile-1" role="tab" aria-controls="profile-1" aria-selected="false">Projects</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact-1" role="tab" aria-controls="contact-1" aria-selected="false">API Settings</a>
                        </li>
                    </ul>


                    <div class="tab-content">
                        <div class="tab-pane fade active show" id="home-1" role="tabpanel" aria-labelledby="home-tab">

                            <?php if (isset($profile) && !empty($profile)) { ?>

                                <div class="border-bottom text-center pb-4">
                                    <img src="<?php echo base_url('assets/images/profile.png') ?>" alt="profile" class="img-lg rounded-circle mb-3">
                                    <div class="mb-3">
                                        <h3><?php echo (isset($profile['name']) ? $profile['name'] : 'Nothing') ?></h3>
                                    </div>

                                    <div class="py-4 profile-text">
                                        <p class="clearfix">
                                            <span class="float-left">
                                                Employee ID
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($profile['id']) ? $profile['id'] : 'Nothing') ?>
                                            </span>
                                        </p>

                                        <p class="clearfix">
                                            <span class="float-left">
                                                Email
                                            </span>
                                            <span class="float-right text-muted">
                                                <a href="#"><?php echo (isset($profile['email']) ? $profile['email'] : 'Nothing') ?> </a>
                                            </span>
                                        </p>
                                        <p class="clearfix">
                                            <span class="float-left">
                                                Total Projects
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($projects) ? count($projects) :  0) ?>
                                            </span>
                                        </p>
                                        <p class="clearfix">
                                            <span class="float-left">
                                                Auto Pause Minutes
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($config['autoPauseMinutes']) ? $config['autoPauseMinutes'] : 0) ?>
                                            </span>
                                        </p>

                                        <p class="clearfix">
                                            <span class="float-left">
                                                Weekly Limit
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($config['weeklyLimit']) ? $config['weeklyLimit'] : 'Nothing') ?>


                                            </span>
                                        </p>

                                        <p class="clearfix">
                                            <span class="float-left">
                                                Disable Offline Time
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($config['disableOfflineTime']) && ($config['disableOfflineTime'] == 1) ?  "True" : 'False') ?>
                                            </span>
                                        </p>

                                        <p class="clearfix">
                                            <span class="float-left">
                                                Disable Screenshot Notification
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($config['disableScreenshotNotification']) && ($config['disableScreenshotNotification'] == 1) ? "True" : "False") ?>
                                            </span>
                                        </p>


                                        <p class="clearfix">
                                            <span class="float-left">
                                                Disable Activity Level
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($config['disableActivityLevel']) && ($config['disableActivityLevel'] == 1) ? "True" : "False") ?>
                                            </span>
                                        </p>


                                        <p class="clearfix">
                                            <span class="float-left">
                                                Week Start Day
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($config['weekStartDay']) ? $config['weekStartDay'] : "Not Set") ?>
                                            </span>
                                        </p>


                                        <p class="clearfix">
                                            <span class="float-left">
                                                Currency
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($config['currency']) ? $config['currency'] : 0) ?>
                                            </span>
                                        </p>

                                        <p class="clearfix">
                                            <span class="float-left">
                                                Disable App Tracking
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($config['disableAppTracking']) && ($config['disableAppTracking'] == 1) ? "True" : "False") ?>
                                            </span>
                                        </p>

                                    </div>

                                </div>
                            <?php } ?>

                        </div>

                        <div class="tab-pane fade" id="profile-1" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="media">
                                <div class="table-responsive">
                                    <table id="table-employee" class="table">
                                        <h3 class="card-title">Weekly Progress</h3>
                                        <thead>
                                            <tr class="bg-primary text-white">
                                                <th>#Id</th>
                                                <th>Name</th>
                                                <th>Limit</th>
                                                <th>Hours</th>
                                                <th>Progress</th>
                                                <th>Email</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php if (isset($projects) && !empty($projects)) { ?>
                                                <?php for ($i = 0; $i < count($projects); $i++) { ?>
                                                    <tr>
                                                        <td><?php echo (isset($projects[$i]) ? substr($projects[$i], 0, 5) . '...' : '') ?></td>
                                                        <td><?php echo ProjectName($projects[$i]) ?></td>
                                                        <td><?php echo WeekTotalLimit($projects[$i], $profile['id']); ?></td>
                                                        <td><?php echo WeekTotalWorkingTime($projects[$i], $profile['id']) ?></td>
                                                        <td><?php echo WorkStatusFinder($projects[$i], $profile['id']) ?></td>
                                                        <td><?php echo GetNotifiEmail($projects[$i], $profile['id']) ?></td>
                                                        <td><a type="button" data-toggle="modal" data-target="#employeeModal" data-whatever="<?php echo $projects[$i] ?>"><i class="mdi mdi-pencil-box" style="font-size: 29px;color: darkblue;margin-left: 23px;"></i></a></td>

                                                    </tr>
                                                <?php } ?>
                                            <?php } ?>
                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>


                        <div class="tab-pane fade" id="contact-1" role="tabpanel" aria-labelledby="contact-tab">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Employee Configration</h4>
                                    <form class="submit-form" action="<?php echo base_url('ApiSetConfigValue') ?>">

                                        <input type="hidden" name="empId" value="<?php echo $profile['id'] ?>">
                                        <div class="form-group">
                                            <select name="key" class="form-control" onchange="ViewKey(this.value)">
                                                <option value=" ">Select key</option>
                                                <option value="disableOfflineTime">disableOfflineTime</option>
                                                <option value="disableScreenshotNotification">disableScreenshotNotification</option>
                                                <option value="disableActivityLevel">disableActivityLevel</option>
                                                <option value="currency">currency</option>
                                                <option value="weeklyLimit">weeklyLimit</option>
                                                <option value="weekStartDay">weekStartDay</option>
                                                <option value="disableAppTracking">disableAppTracking</option>
                                            </select>
                                        </div>

                                        <div class="form-group" id="true-false" style="display: none;">
                                            <label>Select Flag</label>
                                            <select name="value" class="form-control" disabled>
                                                <option value="1">True</option>
                                                <option value="0">False</option>
                                            </select>
                                        </div>

                                        <div class="form-group" id="time" style="display: none;">
                                            <label>Enter value</label>
                                            <input type="text" name="value" class="form-control" disabled>
                                        </div>


                                        <button type="submit" class="btn btn-primary mr-2">Submit</button>

                                    </form>
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- -Model--->
<div class="modal fade" id="employeeModal" tabindex="-1" role="dialog" aria-labelledby="employeeModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Project Configration</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="submit-form" action="<?php echo base_url('ByEmployeeSettings') ?>">

                    <div class="form-group">
                        <input type="hidden" class="form-control" name="emplId" value="<?php echo $profile['id'] ?>">
                        <input type="hidden" class="form-control projectId" name="project_id">
                        <input type="hidden" class="form-control" name="ssm_id" value="<?php echo $ssm_id ?>">
                        <input type="text" id="projectName" class="form-control" disabled>
                    </div>

                    <div class=form-group>
                        <label>Select Settings</label>
                        <select id="setting-list" class=form-control onchange="employeeSettings(this.value)">
                            <option value=""></option>
                            <option value="week limit">Week Limit</option>
                            <option value="email">Notification Email</option>
                            <!-- <option value="notes">Add Notes</option> -->
                        </select>
                    </div>

                    <!---Week Limit Div-------->
                    <div id="week-limit" style="display: none;">
                        <div class="form-group">
                            <label>Enter Weekly Limit</label>
                            <input type="number" name="week_limit" class="form-control" min="0" minlength="0" id="limit" required>
                        </div>
                    </div>


                    <!---Email Notification Div-------->
                    <div id="email" style="display: none;">
                        <div class="form-group">
                            <label>Notification Email</label>
                            <input type="email" name="notifi_email" class="form-control" required>
                        </div>
                    </div>

                    <!---Notes Div-------->
                    <!-- <div id="note" style="display:none">
                        <div class=form-group>
                            <label>Notes</label>
                            <textarea name="notes" minlength="30" class='form-control' rows="5" required></textarea>
                        </div>
                    </div> -->


                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" id="btn-sbmit">Submit</button>
                    </div>

                </form>
            </div>

        </div>
    </div>
</div>

<script>

    ///employee Table
    $('#table-employee').DataTable({
        "lengthMenu": [
            [50, 75, 100, -1],
            [50, 75, 100, "All"]
        ],
        "order": [[ 3, "desc" ]]

    });


    //Employee Model 
    $('#employeeModal').on('show.bs.modal', function(event) {

        var button = $(event.relatedTarget)
        var projectId = button.data('whatever');
        var modal = $(this)
        modal.find('.projectId').val(projectId);
        var emplId = '<?php echo $emplId ?>';


        $.ajax({
            type: 'POST',
            url: "<?php echo base_url('GetDataByProjectIDForEmployee') ?>",
            data: {
                project_id: projectId,
                emplId: emplId,
            },
            dataType: 'html',
            success: function(data) {
                let res = JSON.parse(data);
                switch (res.code) {
                    case 'success':

                        $('#projectName').val(res.projectName);
                        $('#limit').val(res.data[0]['total_limit']);
                        break;
                    case 'warning':
                        showWarningToast(res.message);
                        setTimeout(function() {
                            $('#employeeModal').modal('hide')
                            /// window.location.reload();
                        }, 3500)
                        break;
                }
            }
        });

    });

    $(function() {
        let value = '';
        employeeSettings(value);
    })


    ///
    function employeeSettings(value) {

        ///Week Limit Div Display
        if (value == 'week limit') {

            $('#week-limit').css('display', 'block');
            $('#week-limit input').attr('disabled', false);

            $('#email').css('display', 'none');
            $('#email input').attr('disabled', true);

            // $('#note').css('display', 'none');
            // $('#note textarea').attr('disabled', true);

            $('#btn-submit').attr('disabled', false);

        }

        ///Add Notes
        if (value == 'email') {

            $('#email').css('display', 'block');
            $('#email input').attr('disabled', false);

            $('#week-limit').css('display', 'none');
            $('#week-limit input').attr('disabled', true);

            // $('#note').css('display', 'none');
            // $('#note textarea').attr('disabled', true);

            $('#btn-submit').attr('disabled', false);

        }


        ///Add Notes
        // if (value == 'notes') {

        //     $('#note').css('display', 'block');
        //     $('#note textarea').attr('disabled', false);

        //     $('#week-limit').css('display', 'none');
        //     $('#week-limit input').attr('disabled', true);

        //     $('#email').css('display', 'none');
        //     $('#email input').attr('disabled', true);

        //     $('#btn-submit').attr('disabled', false);

        // }

        ///empty value then
        if (value == '') {

            $('#week-limit').css('display', 'none');
            // $('#note').css('display', 'none');
            $('#email').css('display', 'none');
            $('#btn-submit').attr('disabled', true);

        }

    }


    ///employee Api Settings
    function ViewKey(value) {
        switch (value) {
            case "disableOfflineTime":
                $('#true-false').css('display', 'block');
                $('#true-false select').attr('disabled', false);

                ///time
                $('#time').css('display', 'none');
                $('#time input').attr('disabled', true);

                break;

            case "disableScreenshotNotification":
                $('#true-false').css('display', 'block');
                $('#true-false select').attr('disabled', false);

                ///time
                $('#time').css('display', 'none');
                $('#time input').attr('disabled', true);

                break;

            case "disableActivityLevel":
                $('#true-false').css('display', 'block');
                $('#true-false select').attr('disabled', false);

                ///time
                $('#time').css('display', 'none');
                $('#time input').attr('disabled', true);

                break;

            case "disableAppTracking":
                $('#true-false').css('display', 'block');
                $('#true-false select').attr('disabled', false);

                ///time
                $('#time').css('display', 'none');
                $('#time input').attr('disabled', true);

                break;


            case "weeklyLimit":
                ///time
                $('#time').css('display', 'block');
                $('#time input').attr('disabled', false);

                ///true-false
                $('#true-false').css('display', 'none');
                $('#true-false select').attr('disabled', true);
                break;

            case "autoPauseMinutes":
                ///time
                $('#time').css('display', 'block');
                $('#time input').attr('disabled', false);

                ///true-false
                $('#true-false').css('display', 'none');
                $('#true-false select').attr('disabled', true);
                break;
            case "currency":
                ///time
                $('#time').css('display', 'block');
                $('#time input').attr('disabled', false);

                ///true-false
                $('#true-false').css('display', 'none');
                $('#true-false select').attr('disabled', true);
                break;
            case "weekStartDay":
                ///time
                $('#time').css('display', 'block');
                $('#time input').attr('disabled', false);

                ///true-false
                $('#true-false').css('display', 'none');
                $('#true-false select').attr('disabled', true);
                break;
            case " ":
                ///time
                $('#time').css('display', 'none');
                $('#time input').attr('disabled', true);

                ///true-false
                $('#true-false').css('display', 'none');
                $('#true-false select').attr('disabled', true);
                break;


        }

    }


    ////Post Limit
    $('.submit-form').submit(function(e) {
        e.preventDefault();
        e.stopPropagation();
        let form = $(this).serialize();
        let url = $(this).attr('action');
        $.ajax({
            type: 'POST',
            url: url,
            data: form,
            dataType: 'html',
            beforeSend: function() {
                $('#btn-sbmit').text('processing...');

            },
            success: function(data) {
                let res = JSON.parse(data);
                switch (res.code) {
                    case 'success':
                        showSuccessToast(res.message);
                        setTimeout(function() {
                            ///  $('#exampleModal').modal('hide')
                            window.location.reload();
                        }, 3500)
                        break;
                    case 'warning':
                        showWarningToast(res.message);
                        setTimeout(function() {
                            ///  $('#exampleModal').modal('hide')
                            window.location.reload();
                        }, 3500)
                        break;

                }
            },


        });
    });


</script>