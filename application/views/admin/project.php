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
                        <li class="nav-item">
                            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home-1" role="tab" aria-controls="home-1" aria-selected="true">Project Profile</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile-1" role="tab" aria-controls="profile-1" aria-selected="false">Project Employees</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="project-tab" data-toggle="tab" href="#project-1" role="tab" aria-controls="project-1" aria-selected="false">Project Records</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact-1" role="tab" aria-controls="contact-1" aria-selected="false">Project Settings</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="notes-tab" data-toggle="tab" href="#notes-1" role="tab" aria-controls="notes-1" aria-selected="false">Project Notes</a>
                        </li>
                    </ul>

                    <div class="tab-content">

                        <div class="tab-pane fade active show" id="home-1" role="tabpanel" aria-labelledby="home-tab">

                            <?php if (isset($records) && !empty($records)) { ?>

                                <div class="border-bottom text-center pb-4">

                                    <div class="py-4 profile-text">
                                        <p class="clearfix">
                                            <span class="float-left">
                                                Project ID
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($records[0]->project_id) ? $records[0]->project_id : '') ?>
                                            </span>
                                        </p>

                                        <p class="clearfix">
                                            <span class="float-left">
                                                Project Name
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($records[0]->name) ? $records[0]->name : '') ?>
                                            </span>
                                        </p>

                                        <p class="clearfix">
                                            <span class="float-left">
                                                Project Type
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($records[0]->name) ? $records[0]->project_type : '') ?>
                                            </span>
                                        </p>
                                        <!-- <p class="clearfix">
                                            <span class="float-left">
                                                Client ID
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($records[0]->ssm_id) ? $records[0]->ssm_id : '') ?>
                                            </span>
                                        </p> -->

                                        <p class="clearfix">
                                            <span class="float-left">
                                                End Date
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($records[0]->endDate) ? $records[0]->endDate : 'Not Set ') ?>
                                            </span>
                                        </p>
                                        <!-- <p class="clearfix">
                                            <span class="float-left">
                                                Total Hours Billed
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($records[0]->billed_hours) ? $records[0]->billed_hours : 0) ?>
                                            </span>
                                        </p> -->
                                        <!-- <p class="clearfix">
                                            <span class="float-left">
                                                Week Limit
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo (isset($records[0]->week_limit) ? $records[0]->week_limit : 'Not Set ') ?>
                                            </span>
                                        </p> -->
                                        <!-- <p class="clearfix">
                                            <span class="float-left">
                                                Total Working Hours In Week
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo  ProjectTotalCoveredWeekHours($records[0]->project_id); ?>
                                            </span>
                                        </p> -->
                                        <!-- <p class="clearfix">
                                            <span class="float-left">
                                                Weekly Project Status
                                            </span>
                                            <span class="float-right text-muted">
                                                <?php echo  weeklyProjectStatus($records[0]->project_id); ?>
                                            </span>
                                        </p> -->

                                        <p class="clearfix">
                                            <span class="float-left">
                                                Estimation Link
                                            </span>
                                            <span class="float-right text-muted">
                                                <a href="<?php echo (isset($estimation_link) ? $estimation_link : 'javascript:void(0)') ?>"><?php echo (isset($estimation_link) ? $estimation_link : 'No Links') ?></a>

                                            </span>
                                        </p>
                                        <p class="clearfix">
                                            <span class="float-left">
                                                Completed Tasks Link
                                            </span>
                                            <span class="float-right text-muted">
                                                <a href="<?php echo (isset($completed_task_link) ? $completed_task_link : 'javascript:void(0)') ?>"><?php echo (isset($completed_task_link) ? $completed_task_link : 'No Links') ?></a>

                                            </span>
                                        </p>

                                    </div>

                                </div>
                            <?php } ?>

                        </div>

                        <div class="tab-pane fade" id="profile-1" role="tabpanel" aria-labelledby="profile-tab">
                            <div class="media">
                                <div class="table-responsive">
                                    <table class="table-project table">
                                        <h5>Total Number Of Employees Working On This Project </h5>

                                        <thead>
                                            <tr class="bg-primary text-white">
                                                <th>S.No</th>
                                                <th>#EmployeeID</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Total Work</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php if (isset($emp) && !empty($emp)) { ?>

                                                <?php $i = 1; ?>
                                                <?php foreach ($emp as $key => $value) { ?>
                                                    <tr>
                                                        <td><?php echo $i ?></td>
                                                        <td><?php echo $value->emplId ?></td>
                                                        <td><?php echo  $value->name ?></td>
                                                        <td><?php echo $value->email ?></td>
                                                        <td><?php echo ($value->total_work_hours != NULL) ? $value->total_work_hours . 'hrs' : 'No Data' ?></td>


                                                    </tr>
                                                    <?php $i++; ?>

                                                <?php } ?>

                                            <?php } ?>

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!----Project Records Table Setting Tab---------->
                        <div class="tab-pane fade" id="project-1" role="tabpanel" aria-labelledby="project-tab">
                            <div class="media">

                                <div class="table-responsive">
                                    <table class="table-project table">
                                        <h5>Total Records Of This Project </h5>


                                        <thead>
                                            <tr class="bg-primary text-white">
                                                <!-- <th>#ProjectID</th> -->
                                                <th>Name</th>
                                                <th>Limit</th>
                                                <th>Works</th>
                                                <th>Month</th>
                                                <th>Progress</th>
                                                <!-- <th>Type</th> -->
                                                <th>Billed Hrs</th>
                                                <th>Left Billed Hrs</th>
                                                <th>Billed</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php if (isset($projectHistory) && !empty($projectHistory)) { ?>
                                              

                                                <?php foreach ($projectHistory as $key => $value) { ?>
                                                    <?php  ///Monthly Report
                                                    if ($value->project_type == 'Fixed') {
                                                        $limit = $value->total_limit;
                                                        $work = $value->total_work;
                                                    } else {
                                                        $limit = $value->month_limit;
                                                        $work = $value->total_work_by_month;
                                                    } ?>
                                                    <tr>
                                                        <!-- <td><?php echo substr($value->project_id, 0, 5) . '..' ?></td> -->
                                                        <td><?php echo ProjectName($value->project_id) ?></td>
                                                        <td><?php echo $limit ?></td>
                                                        <td><?php echo $work ?></td>
                                                        <td><?php echo $value->month_name ?></td>

                                                        <!-----New Code --------------->
                                                        <?php
                                                        $total_work_time = '';

                                                        if ($work > 0 && $limit > 0) {
                                                            $total_work_time = ($work / $limit) * 100;
                                                            $total_work_time = round($total_work_time);
                                                            if ($total_work_time > 0 && $total_work_time <= 25) {
                                                                $total_work_time = '<div class="badge badge-success badge-pill">' . $total_work_time . ' %</div>';
                                                            } else if ($total_work_time > 25 && $total_work_time <= 50) {
                                                                $total_work_time = '<div class="badge badge-primary badge-pill">' . $total_work_time . ' %</div>';
                                                            } else if ($total_work_time > 50 && $total_work_time <= 75) {
                                                                $total_work_time = '<div class="badge badge-warning badge-pill">' . $total_work_time . ' %</div>';
                                                            } else if ($total_work_time > 75 && $total_work_time <= 100) {
                                                                $total_work_time = '<div class="badge badge-orange badge-pill">' . $total_work_time . ' %</div>';
                                                            } else if ($total_work_time > 100) {
                                                                $total_work_time = '<div class="badge badge-danger badge-pill">' . $total_work_time . '%</div>';
                                                            }
                                                        } else {
                                                            $total_work_time = '<div class="badge badge-gray badge-pill"> 0 %</div>';
                                                        }
                                                        ?>
                                                        <td><?php echo $total_work_time ?></td>


                                                        <!-- <td><?php echo $value->project_type ?></td> -->
                                                        <td><?php echo $value->billed_hours ?></td>

                                                        <!---Billed Counting ----->
                                                        <?php if ($value->billed_hours == 0) { ?>
                                                            <td>0</td>
                                                        <?php } else { ?>
                                                            <?php 
                                                            $billed = $value->billed_hours;
                                                            $left_billed_hours = $work - $billed;
                                                            ?>
                                                            <td><?php echo $left_billed_hours ?></td>
                                                        <?php } ?>

                                                        <td>

                                                            <div class="form-check form-check-flat form-check-primary">
                                                                <input type="hidden" name="project_id" value="<?php echo $value->project_id ?>">
                                                                <label class="form-check-label">
                                                                    <input type="checkbox" name="billed" <?php echo ($value->billed == 'true') ? 'checked' : '' ?> class="checkbox form-check-input">
                                                                    <i class="input-helper"></i>
                                                                </label>
                                                                <input type="hidden" name="month_name" value="<?php echo $value->month_name ?>">

                                                            </div>



                                                        </td>
                                                        <td class="actions-links"><a data-toggle="modal" data-target="#singleProjectModal" data-whatever="<?php echo $value->id ?>"><i class="mdi mdi-pencil-box"></i></a></td>

                                                    </tr>
                                                <?php } ?>

                                            <?php } ?>

                                            <?php if (isset($records) && !empty($records)) { ?>

                                                <?php foreach ($records as $key => $value) { ?>
                                                    <?php  ///Monthly Report
                                                    if ($value->project_type == 'Fixed') {
                                                        $limit = $value->total_limit;
                                                        $work = $value->total_work;
                                                    } else {
                                                        $limit = $value->month_limit;
                                                        $work = $value->total_work_by_month;
                                                    } ?>
                                                    <tr>
                                                        <!-- <td><?php echo substr($value->project_id, 0, 5) . '..' ?></td> -->
                                                        <td><?php echo ProjectName($value->project_id) ?></td>
                                                        <td><?php echo $limit ?></td>
                                                        <td><?php echo $work ?></td>
                                                        <td><?php echo $value->month_name ?></td>

                                                        <!-----New Code --------------->
                                                        <?php
                                                        $total_work_time = '';

                                                        if ($work > 0 && $limit > 0) {
                                                            $total_work_time = ($work / $limit) * 100;
                                                            $total_work_time = round($total_work_time);
                                                            if ($total_work_time > 0 && $total_work_time <= 25) {
                                                                $total_work_time = '<div class="badge badge-success badge-pill">' . $total_work_time . ' %</div>';
                                                            } else if ($total_work_time > 25 && $total_work_time <= 50) {
                                                                $total_work_time = '<div class="badge badge-primary badge-pill">' . $total_work_time . ' %</div>';
                                                            } else if ($total_work_time > 50 && $total_work_time <= 75) {
                                                                $total_work_time = '<div class="badge badge-warning badge-pill">' . $total_work_time . ' %</div>';
                                                            } else if ($total_work_time > 75 && $total_work_time <= 100) {
                                                                $total_work_time = '<div class="badge badge-orange badge-pill">' . $total_work_time . ' %</div>';
                                                            } else if ($total_work_time > 100) {
                                                                $total_work_time = '<div class="badge badge-danger badge-pill">' . $total_work_time . '%</div>';
                                                            }
                                                        } else {
                                                            $total_work_time = '<div class="badge badge-gray badge-pill"> 0 %</div>';
                                                        }
                                                        ?>
                                                        <td><?php echo $total_work_time ?></td>


                                                        <!-- <td><?php echo $value->project_type ?></td> -->
                                                        <td><?php echo $value->billed_hours ?></td>
                                                        <!---Billed Counting ----->
                                                        <?php if ($value->billed_hours == 0) { ?>
                                                            <td>0</td>
                                                        <?php } else { ?>
                                                            <?php 
                                                            $billed = $value->billed_hours;
                                                            $left_billed_hours = $work - $billed;
                                                            ?>
                                                            <td><?php echo $left_billed_hours ?></td>
                                                        <?php } ?>
                                                        <td>

                                                            <div class="form-check form-check-flat form-check-primary">
                                                                <input type="hidden" name="project_id" value="<?php echo $value->project_id ?>">
                                                                <label class="form-check-label">
                                                                    <input type="checkbox" name="billed" <?php echo ($value->billed == 'true') ? 'checked' : '' ?> class="checkbox form-check-input">
                                                                    <i class="input-helper"></i>
                                                                </label>
                                                                <input type="hidden" name="month_name" value="<?php echo $value->month_name ?>">

                                                            </div>



                                                        </td>
                                                        <td class="actions-links"><a data-toggle="modal" data-target="#singleProjectModal" data-whatever="<?php echo $value->id ?>"><i class="mdi mdi-pencil-box"></i></a></td>

                                                    </tr>
                                                <?php } ?>

                                            <?php } ?>

                                        </tbody>
                                    </table>
                                </div>

                            </div>
                        </div>

                        <!----Project Settings Tab---------->
                        <div class="tab-pane fade" id="contact-1" role="tabpanel" aria-labelledby="contact-tab">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Project Configration</h4>
                                    <form class="submit-form" action="<?php echo base_url('SingleProjectSettings') ?>">
                                        <div class="form-group">
                                            <input type="hidden" name="project_id" value="<?php echo $records[0]->project_id ?>">
                                        </div>

                                        <div class=form-group>
                                            <label>Select Settings</label>
                                            <select id="setting-list" class=form-control onchange="projectSettings(this.value)">
                                                <option value="">List Of Options</option>
                                                <!-- <option value="week limit">Week Limit</option> -->
                                                <!-- <option value="total hours billed">Total Hours Billed</option> -->
                                                <option value="project type">Project Type</option>
                                                <option value="completed tasks link">Completed Tasks Link</option>
                                                <option value="Estimation link">Add Estimation Link</option>
                                                <option value="Project Manager">Add Project Manager</option>
                                            </select>
                                        </div>

                                        <!---Week Limit Div-------->
                                        <!-- <div id="week-limit" style="display: none;">
                                            <div class="form-group">
                                                <label for="">Previous Project Week Limit</label>
                                                <input type="text" value="<?php echo (isset($records[0]->week_limit)) ? $records[0]->week_limit : 'No Limit Set' ?>" class="form-control" disabled>
                                            </div>
                                            <div class="form-group">
                                                <label for="">Update Week Limit</label>
                                                <input type="number" name="week_limit" min="0" class="form-control" required>
                                            </div>
                                        </div> -->

                                        <!---Total Hours Billed Div-------->
                                        <!-- <div id="total-hours-billed" style="display: none;">
                                            <div class="form-group">
                                                <label for="">Preious Billed Hours</label>
                                                <input type="text" value="<?php echo (isset($records[0]->billed_hours)) ? $records[0]->billed_hours : 'No Limit Set' ?>" class="form-control" disabled>
                                            </div>
                                            <div class="form-group">
                                                <label for="">Update Billed Hours</label>
                                                <input type="number" name="billed_hours" min="0" class="form-control" required>
                                            </div>
                                        </div> -->

                                        <!---Project Type Div------->
                                        <div id="project-type" style="display:none">
                                            <div class=form-group>
                                                <label>Select Project Type </label>
                                                <select name="project_type" id="" class=form-control>
                                                    <option value="Fixed" <?php echo (isset($records[0]->project_type) && ($records[0]->project_type == 'Fixed')) ? 'selected' : '' ?>>Fixed Price</option>
                                                    <option value="DNE" <?php echo (isset($records[0]->project_type) && ($records[0]->project_type == 'DNE')) ? 'selected' : '' ?>>DNE</option>
                                                </select>
                                            </div>
                                        </div>


                                        <!---Completed Tasks Link---->
                                        <div id="completed-tasks-link" style="display: none;">
                                            <div class="form-group">
                                                <label>Add Completed Task Link Here</label>
                                                <input type="text" name="completed_task_link" class="form-control">
                                            </div>
                                        </div>


                                        <!---Estimation Link---->
                                        <div id="estimation_link" style="display: none;">
                                            <div class="form-group">
                                                <label>Add Estimation Link Here</label>
                                                <input type="text" name="estimation_link" class="form-control">
                                            </div>
                                        </div>

                                        <!---Project Manager---->
                                        <div id="project-manager" style="display: none;">

                                            <div class="form-group">
                                                <label>Selected Manager</label>
                                                <input type="text" value="<?php echo (isset($manager_id)) ? EmployeeName($manager_id) : 'No Manger' ?>" class="form-control" disabled>
                                            </div>

                                            <div class="form-group">
                                                <label>Select From List</label>
                                                <select id="project_list" name="manager_id" class="form-control">
                                                    <?php if (isset($employee_list) && !empty($employee_list)) { ?>
                                                        <?php foreach ($employee_list as $key => $value) { ?>
                                                            <option value="<?php echo $value->emplId ?>"><?php echo $value->name ?></option>
                                                        <?php } ?>
                                                    <?php } else { ?>
                                                        <option value="">No Records</option>
                                                    <?php } ?>
                                                </select>
                                            </div>

                                        </div>

                                        <button type="submit" id="btn-submit" class="btn btn-primary mr-2">Submit</button>

                                    </form>
                                </div>
                            </div>
                        </div>

                        <div class="tab-pane fade" id="notes-1" role="tabpanel" aria-labelledby="notes-tab">



                            <div class="media">
                                <div class="table-responsive">
                                    <table class="table-project table">

                                        <h6 class="text-right"><button data-toggle="modal" class="btn btn-primary" data-target="#NotesModel">Add New Notes </button></h6>

                                        <thead>
                                            <tr class="bg-primary text-white">
                                                <th>Notes</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <?php if (isset($notes) && !empty($notes)) { ?>
                                                <?php foreach ($notes as $key => $value) { ?>
                                                    <tr>
                                                        <td>
                                                            <div class="card-body">
                                                                <blockquote class="blockquote blockquote-primary">
                                                                    <p>Notes For: <span class="text-primary"><?php echo EmployeeName($value->employee_id) ?></span></p>
                                                                    <p><?php echo $value->notes ?></p>
                                                                    <footer class="blockquote-footer">Posted Date: <cite title="Source Title"><?php echo date('Y-m-d h:i:sa', $value->time) ?></cite></footer>
                                                                </blockquote>
                                                            </div>
                                                        </td>
                                                        <style>
                                                            .blockquote-footer {
                                                                font-size: 60% !important;
                                                            }
                                                        </style>

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


<!-- -Model--->
<div class="modal fade" id="singleProjectModal" tabindex="-1" role="dialog" aria-labelledby="singleProjectModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="projectModalLabel">Project Billed Hours Update</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="submit-form" action="<?php echo base_url('PostProjectBilledHours') ?>">
                    <div class="form-group">
                        <label>Project Name</label>
                        <input type="text" id="nameProject" disabled class="form-control">
                        <input type="hidden" class="form-control" id="tableId" name="id" value="">
                    </div>

                    <div class="form-group">
                        <label for="">Month Name</label>
                        <input type="text" class="form-control nameofmonth" disabled>
                        <input type="hidden" class="form-control nameofmonth" name="month" value="">
                    </div>


                    <div class="form-group">
                        <label for="">Total Billed Hours</label>
                        <input type="number" name="billed_hours" id="billed-hours" class="form-control" min="0">
                    </div>


                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" id="btn-sbmit-model">Send Updates</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<!-- -Model--->
<div class="modal fade" id="NotesModel" tabindex="-1" role="dialog" aria-labelledby="NotesModelLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="projectModalLabel">Please Add New Notes Here</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="submit-form" action="<?php echo base_url('PostProjectNotes') ?>">
                    <div class="form-group">
                        <label>Select Employee</label>
                        <input type="hidden" name="ssm_id" value="<?php echo $ssm_id ?>">
                        <input type="hidden" name="project_id" value="<?php echo $records[0]->project_id ?>">

                        <select name="emplId" id="" class="form-control">
                            <?php if (isset($emp) && !empty($emp)) { ?>
                                <?php foreach ($emp as $key => $value) { ?>
                                    <option value="<?php echo $value->emplId ?>"><?php echo $value->name ?></option>
                                <?php } ?>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="">Notes</label>
                        <textarea name="notes" minlength="10" class="form-control" rows="10" required></textarea>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary" id="btn-sbmit-model">Send Updates</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>



<script>
    ///Table exsists on view project details
    $('.table-project').DataTable({
        "lengthMenu": [
            [50, 75, 100, -1],
            [50, 75, 100, "All"]
        ],

    });

    $(function() {
        let value = '';
        projectSettings(value);
    })

    function projectSettings(value) {

        ///Week Limit Div Display
        // if (value == 'week limit') {

        //     $('#week-limit').css('display', 'block');
        //     $('#week-limit input[name="week_limit"]').attr('disabled', false);

        //     $('#project-type').css('display', 'none');
        //     $('#project-type select[name="project_type"]').attr('disabled', true);

        //     $('#total-hours-billed').css('display', 'none');
        //     $('#total-hours-billed input[name="billed_hours"]').attr('disabled', true);

        //     $('#completed-tasks-link').css('display', 'none');
        //     $('#completed-tasks-link input').attr('disabled', true);

        //     $('#estimation_link').css('display', 'none');
        //     $('#estimation_link input').attr('disabled', true);


        //     $('#project-manager').css('display', 'none');
        //     $('#project-manager select').attr('disabled', true);
        //     $('#btn-submit').attr('disabled', false);

        // }

        ///Total Hours Billed Div Display
        // if (value == 'total hours billed') {

        //     $('#total-hours-billed').css('display', 'block');
        //     $('#total-hours-billed input[name="billed_hours"]').attr('disabled', false);

        //     // $('#week-limit').css('display', 'none');
        //     // $('#week-limit input[name="week_limit"]').attr('disabled', true);

        //     $('#project-type').css('display', 'none');
        //     $('#project-type select[name="project_type"]').attr('disabled', true);

        //     $('#completed-tasks-link').css('display', 'none');
        //     $('#completed-tasks-link input').attr('disabled', true);

        //     $('#estimation_link').css('display', 'none');
        //     $('#estimation_link input').attr('disabled', true);

        //     $('#project-manager').css('display', 'none');
        //     $('#project-manager select').attr('disabled', true);


        //     $('#btn-submit').attr('disabled', false);

        // }


        ///project type
        if (value == 'project type') {
            $('#project-type').css('display', 'block');
            $('#project-type select[name="project_type"]').attr('disabled', false);


            // $('#week-limit').css('display', 'none');
            // $('#week-limit input[name="week_limit"]').attr('disabled', true);

            // $('#total-hours-billed').css('display', 'none');
            // $('#total-hours-billed input[name="billed_hours"]').attr('disabled', true);

            $('#completed-tasks-link').css('display', 'none');
            $('#completed-tasks-link input').attr('disabled', true);

            $('#estimation_link').css('display', 'none');
            $('#estimation_link input').attr('disabled', true);

            $('#project-manager').css('display', 'none');
            $('#project-manager select').attr('disabled', true);

            $('#btn-submit').attr('disabled', false);

        }

        ///completed Task Links 
        if (value == 'completed tasks link') {

            $('#completed-tasks-link').css('display', 'block');
            $('#completed-tasks-link input').attr('disabled', false);

            $('#project-type').css('display', 'none');
            $('#project-type select[name="project_type"]').attr('disabled', true);


            // $('#week-limit').css('display', 'none');
            // $('#week-limit input[name="week_limit"]').attr('disabled', true);

            // $('#total-hours-billed').css('display', 'none');
            // $('#total-hours-billed input[name="billed_hours"]').attr('disabled', true);

            $('#estimation_link').css('display', 'none');
            $('#estimation_link input').attr('disabled', true);

            $('#project-manager').css('display', 'none');
            $('#project-manager select').attr('disabled', true);

            $('#btn-submit').attr('disabled', false);

        }


        ///completed Task Links 
        if (value == 'Estimation link') {

            $('#estimation_link').css('display', 'block');
            $('#estimation_link input').attr('disabled', false);

            $('#completed-tasks-link').css('display', 'none');
            $('#completed-tasks-link input').attr('disabled', true);

            $('#project-type').css('display', 'none');
            $('#project-type select[name="project_type"]').attr('disabled', true);


            // $('#week-limit').css('display', 'none');
            // $('#week-limit input[name="week_limit"]').attr('disabled', true);

            // $('#total-hours-billed').css('display', 'none');
            // $('#total-hours-billed input[name="billed_hours"]').attr('disabled', true);

            $('#project-manager').css('display', 'none');
            $('#project-manager select').attr('disabled', true);

            $('#btn-submit').attr('disabled', false);

        }


        ///completed Task Links 
        if (value == 'Project Manager') {

            $('#project-manager').css('display', 'block');
            $('#project-manager select').attr('disabled', false);


            $('#estimation_link').css('display', 'none');
            $('#estimation_link input').attr('disabled', true);

            $('#completed-tasks-link').css('display', 'none');
            $('#completed-tasks-link input').attr('disabled', true);

            $('#project-type').css('display', 'none');
            $('#project-type select[name="project_type"]').attr('disabled', true);


            // $('#week-limit').css('display', 'none');
            // $('#week-limit input[name="week_limit"]').attr('disabled', true);

            // $('#total-hours-billed').css('display', 'none');
            // $('#total-hours-billed input[name="billed_hours"]').attr('disabled', true);


            $('#btn-submit').attr('disabled', false);

        }


        ///empty value then
        if (value == '') {

            // $('#week-limit').css('display', 'none');
            // $('#total-hours-billed').css('display', 'none');
            $('#project-type').css('display', 'none');
            $('#project-manager').css('display', 'none');
            $('#completed-tasks-link').css('display', 'none');
            $('#estimation_link').css('display', 'none');
            $('#btn-submit').attr('disabled', true);

        }

    }

    //Project Model 
    $('#singleProjectModal').on('show.bs.modal', function(event) {
        
        var button = $(event.relatedTarget)
        var id = button.data('whatever');
        var month_name = button.closest("tr").find("input[name='month_name']").val();  

        var modal = $(this)
        // modal.find('.projectId').val(projectId);


        $.ajax({
            type: 'POST',
            url: "<?php echo base_url('GetProjectYearRecord') ?>",
            data: {
                'id': id,
                'month': month_name
            },
            dataType: 'html',
            success: function(data) {
                let res = JSON.parse(data);
                switch (res.code) {
                    case 'success':
                        
                        $('#nameProject').val(res.name);
                        $('.nameofmonth').val(res.data[0]['month_name']);
                        $('#billed-hours').val(res.data[0]['billed_hours']);
                        $('#tableId').val(res.data[0]['id']); 
                        break;

                    case 'warning': 

                        showWarningToast(res.message);
                        $('#nameProject').val('No Data');
                        $('.nameofmonth').val('No Data');
                        $('#billed-hours').val('No Data');
                        $('#tableId').val('No Data'); 

                        setTimeout(function() {
                            window.location.reload();
                        }, 3500) 

                        break;



                }
            }
        });

    });

    // $('#formbilled.checked').on('onchange', function(e) {
    $(document).on("change", "input[name='billed']", function(e) {
        e.preventDefault();
        e.stopPropagation();
        var project_id = $(this).closest(".form-check").find("input[name='project_id']").val();
        var month_name = $(this).closest(".form-check").find("input[name='month_name']").val();
        
        var checkbox = $(this);
        var billed = checkbox.prop('checked');

        $.ajax({
            type: 'POST',
            url: '<?php echo base_url('PostBilledCheck') ?>',
            data: {
                'project_id': project_id,
                'month_name': month_name,
                'billed': billed,
            },
            dataType: 'html',
            success: function(data) {
                let res = JSON.parse(data);
                switch (res.code) {
                    case 'success':
                        showSuccessToast(res.message);
                        // setTimeout(function() {
                        //     window.location.reload();
                        // }, 3500)
                        break;
                    case 'warning':
                        showWarningToast(res.message);
                        break;

                }
            }
        });


    });

    ///
    $('.submit-form').submit(function(e) {
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
</script>