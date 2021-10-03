<div class="row">
                        <div class="col-3">
                            <ul class="nav nav-tabs nav-tabs-vertical" role="tablist">
                                <!----Profile----->
                                <li class="nav-item">
                                    <a class="nav-link active" id="profile-tab-vertical" data-toggle="tab" href="#profile-2" role="tab" aria-controls="profile-2" aria-selected="false">
                                        Profile Detail
                                        <i class="mdi mdi-account-outline text-danger ml-2"></i>
                                    </a>
                                </li>


                                <li class="nav-item">
                                    <a class="nav-link" id="contact-tab-vertical" data-toggle="tab" href="#project-2" role="tab" aria-controls="contact-2" aria-selected="false">
                                        Projects Settings
                                        <i class="mdi mdi mdi-sale text-success ml-2"></i>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="contact-tab-vertical" data-toggle="tab" href="#contact-2" role="tab" aria-controls="contact-2" aria-selected="false">
                                        API Settings
                                        <i class="mdi mdi-settings text-success ml-2"></i>
                                    </a>
                                </li>


                            </ul>
                        </div>
                        <div class="col-9">
                            <div class="tab-content tab-content-vertical">

                                <!---Profile--->
                                <div class="tab-pane fade active show" id="profile-2" role="tabpanel" aria-labelledby="home-tab-vertical">
                                    <?php if (isset($profile) && !empty($profile)) { ?>

                                        <div class="border-bottom text-center pb-4">
                                            <img src="https://via.placeholder.com/92x92" alt="profile" class="img-lg rounded-circle mb-3">
                                            <div class="mb-3">
                                                <h3><?php echo (isset($profile['name']) ? $profile['name'] : 'Nothing') ?></h3>
                                            </div>
                                            <div class="border-bottom py-4">
                                                <div class="d-flex mb-3">
                                                    <div class="progress progress-md flex-grow">
                                                        <div class="progress-bar bg-primary" role="progressbar" aria-valuenow="55" style="width: 55%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                                <div class="d-flex">
                                                    <div class="progress progress-md flex-grow">
                                                        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="75" style="width: 75%" aria-valuemin="0" aria-valuemax="100"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="py-4">
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
                                                        <?php echo (isset($totalProjects) ? $totalProjects : 'Nothing') ?>
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






                                <!----Project----->
                                <div class="tab-pane fade" id="project-2" role="tabpanel" aria-labelledby="profile-tab-vertical">

                                    <div class="table-responsive">
                                        <table id="data-table" class="table">
                                            <thead>
                                                <tr class="bg-primary text-white">
                                                    <th>#Project ID</th>
                                                    <th>Project Name</th>
                                                    <th>Weekly Limit</th>
                                                    <th>working Hours</th>
                                                    <th>status</th>
                                                    <th>Notification Email</th>
                                                    <th>Actions</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php if (isset($projects) && !empty($projects)) { ?>
                                                    <?php foreach ($projects as $key => $value) { ?>

                                                        <tr>
                                                            <td><?php echo (isset($value->projectId) ? $value->projectId : 'Nothing') ?></td>
                                                            <td><?php echo ProjectName($value->projectId) ?></td>
                                                            <td><?php echo WeekTotalLimit($value->projectId, $profile['id']) . ' hr'; ?></td>
                                                            <td><?php echo WeekTotalWorkingTime($value->projectId, $profile['id']) . ' hr' ?></td>
                                                            <td><?php echo WorkStatusFinder($value->projectId, $profile['id']) ?></td>
                                                            <td><?php echo GetNotifiEmail($value->projectId, $profile['id']) ?></td>
                                                            <td><a type="button" data-toggle="modal" data-target="#exampleModal" data-whatever="<?php echo $value->projectId ?>"><i class="mdi mdi-pencil-box" style="font-size: 29px;color: darkblue;margin-left: 23px;"></i></a></td>

                                                        </tr>

                                                    <?php } ?>

                                                <?php } ?>

                                            </tbody>
                                        </table>
                                    </div>

                                </div>

                                <!----------Others--------------->
                                <div class="tab-pane fade" id="contact-2" role="tabpanel" aria-labelledby="contact-tab-vertical">

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