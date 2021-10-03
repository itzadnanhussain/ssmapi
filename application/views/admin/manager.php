<style>
    .profile-text {
        font-weight: bold;
    }

    .profile-text p {
        border-bottom: 1px solid grey;
        padding: 5px;
    }

    .actions-links a>i {
        font-size: 30px !important;
        color: darkblue;
        margin-left: 20px;
        margin-right: 0px;
    }

    .badge-gray {
        color: #fff;
        background-color: gray !important;
    }

    .form-check {
        margin-left: 15px !important;
    }
</style>
<div class="content-wrapper">
    <div class="row">
        <div class="col-md-12 col-xl-12 grid-margin stretch-card d-none d-md-flex">
            <div class="card">
                <div class="card-body">
                    <ul class="nav nav-tabs" role="tablist">
                        <!----------Profile--------------->
                        <li class="nav-item">
                            <a class="nav-link active" id="profile-tab" data-toggle="tab" href="#profile-1" role="tab" aria-controls="profile-1" aria-selected="true">Profile</a>
                        </li>
                        <!-------------------Projects----->
                        <li class="nav-item">
                            <a class="nav-link" id="projects-tab" data-toggle="tab" href="#projects-1" role="tab" aria-controls="projects-1" aria-selected="false">Projects</a>
                        </li>
                        <!-------------------Settings----->
                        <li class="nav-item">
                            <a class="nav-link" id="settings-tab" data-toggle="tab" href="#settings-1" role="tab" aria-controls="settings-1" aria-selected="false">Settings</a>
                        </li>

                    </ul>
                    <div class="tab-content">

                        <!----------Profile--------------->
                        <div class="tab-pane fade active show" id="profile-1" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="border-bottom text-center pb-4">
                                <div class="py-4 profile-text">
                                    <?php
                                    //    [id] => 2
                                    //    [manager_id] => 103434
                                    //    [ssm_id] => 52033l664d7349b4d71e273adbd19e2197745f
                                    //    [count] => 5
                                    //    [email] => testmanager@gmail.com
                                    //    [time] => 2021-01-29 09:59:21
                                    //     
                                    ?>

                                    <p class="clearfix">
                                        <span class="float-left">
                                            Manager ID
                                        </span>
                                        <span class="float-right text-muted">
                                            <?php echo (isset($managerRecord)) ? $managerRecord[0]->manager_id : '' ?>

                                        </span>
                                    </p>

                                    <p class="clearfix">
                                        <span class="float-left">
                                            Manager Name
                                        </span>
                                        <span class="float-right text-muted">
                                            <?php echo (isset($managerRecord)) ? EmployeeName($managerRecord[0]->manager_id) : '' ?>

                                        </span>
                                    </p>

                                    <p class="clearfix">
                                        <span class="float-left">
                                            Manager Email
                                        </span>
                                        <span class="float-right text-muted">
                                            <?php echo (isset($managerRecord)) ? $managerRecord[0]->email : '' ?>

                                        </span>
                                    </p>

                                    <p class="clearfix">
                                        <span class="float-left">
                                            Total Projects
                                        </span>
                                        <span class="float-right text-muted">
                                            <?php echo (isset($managerRecord)) ? $managerRecord[0]->count : '' ?>

                                        </span>
                                    </p>
                                </div>
                            </div>
                        </div>

                        <!-------------------Projects----->
                        <div class="tab-pane fade" id="projects-1" role="tabpanel" aria-labelledby="projects-tab">
                            <div class="media">
                                <div class="table-responsive">
                                    <table class="table" id="DataTable-Manager">
                                        <h5>Project List</h5>

                                        <thead>
                                            <tr class="bg-primary text-white">
                                                <th>Project Name</th>
                                                <th>Project Type</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php if (isset($managerProjects) && !empty($managerProjects)) { ?>

                                                <?php foreach ($managerProjects as $key => $value) { ?>

                                                    <tr>
                                                        <td><?php echo $value->name  ?></td>
                                                        <td><?php echo $value->project_type  ?></td>


                                                    </tr>
                                                <?php } ?>
                                            <?php  } ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-------------------Settings------>
                        <div class="tab-pane fade" id="settings-1" role="tabpanel" aria-labelledby="settings-tab">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Manager Settings</h4>
                                    <form class="PostRequest" action="<?php echo base_url('ManagerSettings') ?>">
                                        <div class="form-group">
                                            <input type="hidden" name="manager_id" value="<?php echo (isset($managerRecord)) ? $managerRecord[0]->manager_id : ''  ?>">
                                        </div>

                                        <div class=form-group>
                                            <label>Select Settings</label>
                                            <select id="setting-manager" class=form-control>
                                                <option value="">List Of Options</option>
                                                <option value="email">Emails</option>
                                            </select>
                                        </div>

                                        <!----------------Email Div----------------->
                                        <div id="email-div" style="display: none;">
                                            <div class="form-group">
                                                <label>Add Email Form PM</label>
                                                <input type="email" name="email" class="form-control" required disabled>
                                            </div>
                                        </div>
                                        <button type="submit" id="btn-submit" class="btn btn-primary mr-2">Submit</button>

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

<script>
    ///table
    $('#DataTable-Manager').DataTable({

    });

    ////setting-manager
    $('#setting-manager').change(function(e) {
        var value = $(this).val();
        if (value == 'email') {
            $('#email-div').show();
            $('#email-div input[name="email"]').attr('disabled', false);
            $('#btn-submit').attr('disabled', false);

        } else {

            $('#email-div').css('display', 'none');
            $('#btn-submit').attr('disabled', true);

        }
    });
    
</script>