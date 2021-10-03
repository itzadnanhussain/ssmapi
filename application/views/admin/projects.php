<div class="content-wrapper">
    <div class="row">

        <!---Pie Chart --->
        <div class="col-6 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">All Projects Statistics About <span style="background-color:darkblue;color:white;padding-left:5px;padding-right:5px;border-radius: 3px;"><?php echo $_SESSION['month'] ?></span>
                    </h4>
                    <div id="chartContainer" style="height: 200px; width: 100%; margin-top:10rem"></div>

                    <style>
                        .canvasjs-chart-credit {
                            display: none !important;
                        }
                    </style>
                    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
                    <script>
                        window.onload = function() {

                            var chart = new CanvasJS.Chart("chartContainer", {
                                exportEnabled: false,
                                animationEnabled: true,
                                // title: {
                                //     text: "All Projects Statistics About <?php echo date('M') ?>",

                                // },
                                legend: {
                                    cursor: "pointer",
                                    itemclick: explodePie,
                                    verticalAlign: "top",
                                },

                                data: [{
                                        type: "doughnut",
                                        showInLegend: true,
                                        toolTipContent: "{name}: <strong>{y} hrs</strong>",
                                        indexLabel: "{name} - {y} hrs",

                                        dataPoints: [{
                                                y: <?php echo (isset($total_monthly_hourse) ? $total_monthly_hourse : 1) ?>,
                                                name: "Total Worked Hours",
                                                exploded: false
                                            },
                                            {

                                                y: <?php echo (isset($different_hourse) ? $different_hourse : 1) ?>,
                                                name: "<?php echo (isset($different_title) ? $different_title : 'No Title') ?>"

                                            },

                                            // {

                                            //     y: <?php echo (isset($total_monthly_limits) ? $total_monthly_limits : 0) ?>,
                                            //     name: "Total Month Limit",
                                            //     exploded: false


                                            // },



                                        ]
                                    },

                                ]
                            });
                            chart.render();
                        }

                        function explodePie(e) {
                            if (typeof(e.dataSeries.dataPoints[e.dataPointIndex].exploded) === "undefined" || !e.dataSeries.dataPoints[e.dataPointIndex].exploded) {
                                e.dataSeries.dataPoints[e.dataPointIndex].exploded = true;
                            } else {
                                e.dataSeries.dataPoints[e.dataPointIndex].exploded = false;
                            }
                            e.chart.render();

                        }
                    </script>

                </div>
            </div>
        </div>

        <!---Search BY Projects SSM Token--->
        <div class="col-6 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Search Projects Month Of <span style="background-color:darkblue;color:white;padding-left:5px;padding-right:5px;border-radius: 3px;"><?php echo $_SESSION['month'] ?></span></h4>
                    <form class="form clientForm">
                        <div class="form-group">
                            <label>Select Date Type</label>
                            <select name="date_type" id="date-type" class="form-control" onchange="DateType(this.value)">
                                <option value="month-wise" <?php echo (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) ? 'selected' : '' ?>>Month Wise</option>
                                <option value="custom-range" <?php echo (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'custom-range')) ? 'selected' : '' ?>>Custome Range</option>
                            </select>
                        </div>

                        <div id="month-wise-div" style="display: none;">
                            <div class="form-group">
                                <label>Month</label>
                                <input type="text" name='date' value="<?php echo (isset($_SESSION['date']) ? $_SESSION['date'] : date('m/d/Y')) ?>" class="form-control datepicker-from">
                            </div>
                        </div>

                        <div id="custom-range-div" style="display: none;">
                            <div class="form-group">
                                <label>From Date</label>
                                <input type="text" name='from' value="<?php echo (isset($_SESSION['from_date']) ? $_SESSION['from_date'] : date('m/d/Y')) ?>" class="form-control datepicker-from">
                            </div>

                            <div class="form-group">
                                <label>To Date</label>
                                <input type="text" name='to' id="datepicker-to" value="<?php echo (isset($_SESSION['to_date']) ? $_SESSION['to_date'] : date('m/d/Y')) ?>" class="form-control">
                            </div>

                        </div>

                        <div class="form-group">
                            <label for="">SSM Token</label>
                            <select name="ssm_id" id="" class="form-control mb-2 mr-sm-2" onchange="getEmployeeByToken(this.value)">
                                <option value="52033l664d7349b4d71e273adbd19e2197745f" <?php echo (isset($_SESSION['ssm_id']) && ($_SESSION['ssm_id'] == '52033l664d7349b4d71e273adbd19e2197745f')) ? 'selected' : '' ?>>Internal</option>
                                <!-- <option value="45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c" <?php echo (isset($_SESSION['ssm_id']) && ($_SESSION['ssm_id'] == '45605ld4a2c8d08e3fd5a6e6aa74e9cc982a2c')) ? 'selected' : '' ?>>Narola</option> -->
                            </select>
                        </div>

                        <div class="form-group">
                            <label for="">Project Manager</label>
                            <select id="manager_list" name="manager_id" class="form-control">


                            </select>
                        </div>

                        <div class="form-group">
                            <label for="">Project Types</label>
                            <select id="project_type" name="type" class="form-control">
                                <option value="All" <?php echo (isset($_SESSION['type_search']) && ($_SESSION['type_search'] == 'All')) ? 'selected' : '' ?>>All</option>
                                <option value="Fixed" <?php echo (isset($_SESSION['type_search']) && ($_SESSION['type_search'] == 'Fixed')) ? 'selected' : '' ?>>Fixed</option>
                                <option value="DNE" <?php echo (isset($_SESSION['type_search']) && ($_SESSION['type_search'] == 'DNE')) ? 'selected' : '' ?>>DNE</option>
                            </select>
                        </div>


                        <div class="form-group">
                            <button type="submit" class="btn btn-primary btn-lg btn-block" id="btn-sbmit">
                                <i class="mdi mdi-account-search"></i>
                                Search
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <h4 class="card-title">Total Number Of Projects <div class="badge badge-pill badge-success"><?php echo (isset($count)) ? $count : ''  ?></div>
                    </h4>
                    <div class="row">
                        <div class="col-12">
                            <div class="table-responsive">
                                <div id="order-listing_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <style>
                                                .dataTable thead>tr>th {
                                                    font-size: 11px;
                                                }

                                                .actions-links a>i {
                                                    font-size: 20px !important;
                                                    color: darkblue;
                                                    margin-right: 15px;
                                                }
                                            </style>
                                            <table class="table dataTable no-footer" id="data-table-projects" role="grid" aria-describedby="order-listing_info">
                                                <thead>
                                                    <?php if (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) { ?>
                                                        <tr class="bg-primary text-white">
                                                            <th>#id</th>
                                                            <th>Name</th>

                                                            <th>Monthly Hours</th>
                                                            <th>Monthly Limit</th>
                                                            <th>Progress</th>
                                                            <th>Email</th>
                                                            <?php if (isset($check) && ($check == 'PM')) { ?>
                                                                <th>PM</th>
                                                            <?php } ?>
                                                            <?php if (isset($check) && ($check == 'Type')) { ?>
                                                                <th>Type</th>
                                                            <?php } ?>
                                                            <th>Status</th>
                                                            <th>Actions</th>
                                                        </tr>
                                                    <?php } else { ?>
                                                        <tr class="bg-primary text-white">
                                                            <th>#id</th>
                                                            <th>Name</th>
                                                            <th>From</th>
                                                            <th>To</th>
                                                            <th>Work Hours</th>
                                                            <th>Email</th>
                                                            <?php if (isset($check) && ($check == 'PM')) { ?>
                                                                <th>PM</th>
                                                            <?php } ?>
                                                            <?php if (isset($check) && ($check == 'Type')) { ?>
                                                                <th>Type</th>
                                                            <?php } ?>
                                                            <th>Status</th>
                                                            <th>Actions</th>
                                                        </tr>
                                                    <?php } ?>
                                                </thead>
                                                <tbody>



                                                    <?php if (isset($clients) && !empty($clients)) { ?>

                                                        <?php foreach ($clients as $key => $value) { ?>
                                                            <tr>
                                                                <input type="hidden" name="client_id" value="<?php echo $value->clientId ?>">
                                                                <td class="actions-links"> <a href="javascript:void(0)" class="details-control"><i class="mdi mdi-plus-circle"></i></a></td>
                                                                <td><?php echo  $value->clientName ?></td>
                                                                <td><?php echo (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) ? ClientTotalMonthWork($value->clientId) : $_SESSION['from_date'] ?> </td>
                                                                <td><?php echo (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) ? $value->month_limit : $_SESSION['to_date'] ?> </td>
                                                                <td><?php echo (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) ? ClientTotalProgress($value->clientId, $value->month_limit) : ClientTotalCustomRangeWork($value->clientId) ?> </td>

                                                                <td><?php echo  $value->client_email ?> </td>
                                                                <td><?php echo  $value->client_status ?> </td>

                                                                <!-- <td><a class="details-control" href="#">Test</a></td> -->
                                                                <?php if (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) { ?>
                                                                    <td class="actions-links_client">
                                                                        <a data-toggle="modal" data-target="#projectModal" data-whatever="<?php echo $value->clientId ?>"><i class="mdi mdi-pencil-box"></i></a>
                                                                    </td>
                                                                <?php } else { ?>
                                                                    <td class="actions-links_client">
                                                                        <a href="javascript:void(0)"><i class="mdi mdi-pencil-box"></i></a>
                                                                    </td>
                                                                <?php } ?>
                                                            </tr>

                                                        <?php  } ?>

                                                    <?php } ?>

                                                    <?php if (isset($tr) && !empty($tr)) {
                                                        for ($i = 0; $i < $count; $i++) {
                                                            echo  $tr[$i];
                                                        }
                                                    } ?>


                                                </tbody>

                                            </table>
                                        </div>
                                    </div>

                                    <style>
                                        .actions-links_client a>i {
                                            font-size: 23px !important;
                                            color: darkblue;
                                            margin-right: 15px;
                                            margin: 15px;
                                        }
                                    </style>

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
<div class="modal fade" id="projectModal" tabindex="-1" role="dialog" aria-labelledby="projectModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <!-- <h5 class="modal-title" id="projectModalLabel">You Can Change Monthly Limit Against Bellow Project ID</h5> -->
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="month-limit" action="<?php echo base_url('PostProjectMonthlyLimit') ?>">
                    <div class="form-group">
                        <!-- <input type="text" class="projectId form-control" id="projectId" value="" disabled> -->
                        <label>Project Name</label>
                        <input type="text" id="nameProject" disabled class="form-control">
                        <input type="hidden" class="projectId form-control" id="projectId" name="project_id" value="">
                    </div>
                    <div class="form-group">
                        <select id="config" class="form-control" onchange="configProjectSetting()">
                            <option value="">Select Setting</option>
                            <option value="month-limit">Limit</option>
                            <option value="status">Status</option>
                            <option value="email">Add Email</option>

                        </select>
                    </div>
                    <div class="form-group">
                        <select id="status" name="status" class="form-control" style="display: none;" required disabled>
                            <option value="active">active</option>
                            <option value="inactive">inactive</option>
                        </select>
                    </div>
                    <div class=form-grop id="email-div" style="display: none;">
                        <label for="" style="font-size: 12px;color: darkblue;">Here You Can Enter Multiple Email Seprated By Comma</label>
                        <textarea name="emails" class="form-control" required> </textarea>
                    </div>

                    <div class="form-group" id="limit" style="display: none;">
                        <label id="label-limit"></label>
                        <input type="hidden" name="project_type" id="project_type" disabled>
                        <input type="number" name="month_limit" min="0" value="" class="form-control" required disabled>
                        <!-- <span class="form-control" id="limit-fixed"></span> -->
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
    ///load Data
    let table = $('#data-table-projects').DataTable({
        "lengthMenu": [
            [50, 75, 100, -1],
            [50, 75, 100, "All"]
        ],
        "order": [
            [0, "asc"],
            [6, "asc"],
            [4, "desc"],

        ]
    });

    $(function() {
        getEmployeeByToken("<?php echo $_SESSION['ssm_id'] ?>"); 
        var value = $('select[name="date_type"] option:selected').val();
        DateType(value);
    })


    $('.search-form').submit(function(e) {
        e.preventDefault();
        e.stopPropagation();
        let form = $(this).serialize();
        let url = $(this).attr('action');
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
                        }, 3500);
                        break;
                    case 'warning':
                        showWarningToast(res.message);
                        break;

                }
            }

        });
    })


    function getEmployeeByToken(ssm_id) {
        $('#manager_list').find('option')
            .remove()
            .end()
        $.ajax({
            type: 'POST',
            url: '<?php echo base_url('getEmployeeByToken') ?>',
            data: {
                'ssm_id': ssm_id,

            },
            dataType: 'html',
            success: function(data) {
                let res = JSON.parse(data);
                let pm_search = "<?php echo $_SESSION['pm_search'] ?>";
                switch (res.code) {
                    case 'success':
                        let list = ' <option value="All" <?php echo (isset($_SESSION['pm_search']) && ($_SESSION['pm_search'] == 'All')) ? 'selected' : '' ?>> All</option>';
                        for (let index = 0; index < res.data.length; index++) {
                            if (res.data[index]['emplId'] == pm_search) {
                                list += '<option value=' + res.data[index]['emplId'] + ' selected >' + res.data[index]['name'] + '</option>';

                            } else {
                                list += '<option value=' + res.data[index]['emplId'] + ' >' + res.data[index]['name'] + '</option>';


                            }


                        }

                        $('#manager_list').append(list);


                        break;
                    case 'warning':

                        break;
                }


            }
        });
    }


    function configProjectSetting() {


        let value = $('#config').val();

        if (value == 'month-limit') {
            $('#limit').css('display', 'block');
            $('#limit input').attr('disabled', false);


            $('#status').css('display', 'none');
            $('#status').attr('disabled', 'disabled');


            $('#email-div').css('display', 'none');
            $('#email-div textarea').attr('disabled', 'disabled');


        }

        if (value == 'status') {
            $('#status').css('display', 'block');
            $('#status').attr('disabled', false);

            $('#limit').css('display', 'none');
            $('#limit input').attr('disabled', 'disabled');

            $('#email-div').css('display', 'none');
            $('#email-div textarea').attr('disabled', 'disabled');



        }


        if (value == 'email') {
            $('#email-div').css('display', 'block');
            $('#email-div textarea').attr('disabled', false);

            $('#status').css('display', 'none');
            $('#status').attr('disabled', 'disabled');

            $('#limit').css('display', 'none');
            $('#limit input').attr('disabled', 'disabled');




        }


    }

    //Project Model 
    $('#projectModal').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget)
        var projectId = button.data('whatever');
        var modal = $(this)
        modal.find('.projectId').val(projectId);


        $.ajax({
            type: 'POST',
            url: "<?php echo base_url('GetDataByProjectID') ?>",
            data: {
                project_id: projectId
            },
            dataType: 'html',
            success: function(data) {
                let res = JSON.parse(data);
                switch (res.code) {
                    case 'success':
                        if (res.data[0]['project_type'] == 'DNE') {
                            $('#label-limit').text('Monthly Limit');

                        }



                        ////enter values
                        $('#email-div textarea').text(res.data[0]['emails']);
                        $('#limit input[name="month_limit"]').val(res.data[0]['month_limit']);
                        $('#limit input[name="project_type"]').val(res.data[0]['project_type']);
                        $('#nameProject').val(res.data[0]['name']);
                        $("#status option[value='" + res.data[0]['status'] + "']").attr("selected", "selected");
                        if (res.data[0]['project_type'] == 'Fixed') {
                            $('#label-limit').text('Total Limit');
                            // if (res.data[0]['month_limit'] > 0) {
                            //     $('#limit input').hide();
                            //     $('#limit-fixed').text(res.data[0]['month_limit']); 

                            // }

                        }
                        break;
                    case 'successClient':

                        ////enter values
                        $('#email-div textarea').text(res.data[0]['client_email']);
                        $('#limit input').val(res.data[0]['month_limit']);
                        $('#nameProject').val(res.data[0]['clientName']);
                        $("#status option[value='" + res.data[0]['client_status'] + "']").attr("selected", "selected");


                        break;


                }
            }
        });

    });

    // Add event listener for opening and closing details
    $('#data-table-projects tbody').on('click', 'td>a.details-control', function() {
        // function GetRowByClient(id) {
        var id = $(this).closest("tr").find("input[name='client_id']").val();
        var i = $(this).closest("a").find("i.mdi-plus-circle");
        var ii = $(this).closest("a").find("i.mdi-arrow-down-drop-circle");

        var tr = $(this).closest('tr');
        var row = table.row(tr);

        if (row.child.isShown()) {
            // This row is already open - close it
            row.child.hide();
            tr.removeClass('shown');

            // Open this row
            ii.removeClass('mdi-arrow-down-drop-circle');
            ii.addClass('mdi-plus-circle');


        } else {
            // Open this row
            i.removeClass('mdi-plus-circle');
            i.addClass('mdi-arrow-down-drop-circle');

            $.ajax({
                type: 'POST',
                url: '<?php echo base_url('GetDataByClient') ?>',
                data: {
                    'id': id,
                },
                success: function(data) {
                    let res = JSON.parse(data);
                    switch (res.code) {

                        case 'success':
                            let tr_list = '<tr class="client_bundle">' +
                                '<td>id</td>' +
                                '<td>Name</td>' +
                                <?php if (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) { ?> '<td> Works By Month</td>' +
                                <?php } else {  ?> '<td> From Date </td>' +
                                <?php  } ?>

                            <?php if (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) { ?> '<td>Month Limit</td>' +
                                <?php } else {  ?> '<td> To Date </td>' +
                                <?php  } ?>


                                <?php if (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) { ?> '<td>Progress</td>' +
                                    <?php } else {  ?> '<td> Total Work </td>' +
                                    <?php  } ?>


                                    '<td>Emails</td>' +
                                    '<td>Status</td>' +
                                    '<td>Actions</td>' +
                                    '</tr>';
                                    for (let index = 0; index < res.data.length; index++) {

                                        ///count Progress
                                        let total_work_time;
                                        let limit = 0;
                                        let work = 0;
                                        ///Monthly Report
                                        if (res.data[index]['project_type'] == 'Fixed') {
                                            limit = res.data[index]['total_limit'];
                                            work = res.data[index]['total_work'];

                                        } else {
                                            limit = res.data[index]['month_limit'];
                                            work = res.data[index]['total_work_by_month'];

                                        }

                                        if (work > 0 && limit > 0) {
                                            total_work_time = (work / limit) * 100;
                                            total_work_time = total_work_time.toFixed(2);;
                                            if (total_work_time > 0 && total_work_time <= 25) {
                                                total_work_time = '<div class="badge badge-danger badge-pill">' + total_work_time +
                                                    ' %</div>';
                                            }

                                            if (total_work_time > 25 && total_work_time <= 50) {
                                                total_work_time = '<div class="badge badge-warning badge-pill">' + total_work_time +
                                                    ' %</div>';
                                            }

                                            if (total_work_time > 50 && total_work_time <= 75) {
                                                total_work_time = '<div class="badge badge-primary badge-pill">' + total_work_time +
                                                    ' %</div>';
                                            }

                                            if (total_work_time > 75 && total_work_time <= 100) {
                                                total_work_time = '<div class="badge badge-success badge-pill">' + total_work_time +
                                                    ' %</div>';
                                            }

                                            if (total_work_time > 100) {
                                                total_work_time = '<div class="badge badge-success badge-pill">' + total_work_time +
                                                    ' %</div>';
                                            }
                                        } else {
                                            total_work_time = '<div class="badge badge-danger badge-pill"> 0 %</div>';
                                        }


                                        tr_list += '<tr>' +
                                            '<td>' + (res.data[index]['project_id']).substr(0, 12) + '..' + '</td>' +
                                            '<td>' + res.data[index]['name'] + '</td>' +

                                            <?php if (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) { ?> '<td>' + res.data[index]['total_work_by_month'] + '</td>' +
                                            <?php } else {  ?> '<td> <?php echo $_SESSION['from_date'] ?> </td>' +
                                            <?php  } ?>


                                        <?php if (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) { ?> '<td>' + res.data[index]['month_limit'] + '</td>' +
                                            <?php } else {  ?> '<td> <?php echo $_SESSION['to_date'] ?> </td>' +
                                            <?php  } ?>

                                            <?php if (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) { ?> '<td>' + total_work_time + '</td>' +
                                                <?php } else {  ?> '<td>' + res.data[index]['custom_hours'] + '</td>' +
                                                <?php  } ?>


                                                '<td>' + (res.data[index]['emails']).substr(0, 22) + '..' + '</td>' +
                                                    '<td>' + res.data[index]['status'] + '</td>' +
                                                    '<td class="actions-links"><a data-toggle="modal" data-target="#projectModal" data-whatever="' + res.data[index]['project_id'] + '"><i class="mdi mdi-pencil-box"></i></a><a href="<?php echo base_url('project_details/') ?>' + btoa(res.data[index]['project_id']) + '"><i class="mdi mdi-airplay"></i></a></td>' +

                                                    '</tr>';

                                    }

                                    //return '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;"> 1</table>';
                                    // row.child('<table cellpadding="2">' + tr_list + '</table>').show();
                                    row.child(tr_list).show();
                                    $('.client_bundle').closest('td').addClass('nested_td_table');
                                    tr.addClass('shown');

                                case 'warning':

                                    break;

                    }
                },

            });
        }

    });

    //General Form
    $('.month-limit').submit(function(e) {

        e.preventDefault();
        e.stopPropagation();
        let form = $(this).serialize();
        var url = $(this).attr('action');
        $.ajax({
            type: 'POST',
            url: url,
            data: form,
            dataType: 'html',
            beforeSend: function() {
                $('#btn-sbmit').text('processing...');
                $('#btn-sbmit').attr('disabled', true);
                $('#btn-sbmit-model').text('processing...');
                $('#btn-sbmit-model').attr('disabled', true);

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
            complete: function() {
                $('#btn-sbmit').text('Success');
                $('#btn-sbmit-model').text('Processing');

            },
        });
    });

    $('.clientForm').submit(function(e) {
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
                $('.loader').show()

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
            complete: function(data) {
                $('.loader').hide();
            }


        });
    })
</script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
    $(function() {
        $(".datepicker-from").datepicker({
            maxDate: "+0D",
        });
    });

    $(function() {
        $("#datepicker-to").datepicker({
            maxDate: "+0D",
        });
    });
</script>

<script>
    function DateType(value) {
        if (value == 'month-wise') {
            $('#month-wise-div').css('display', 'block');
            $('#month-wise-div input[name=date]').attr('disabled', false);

            $('#custom-range-div').css('display', 'none');
            $('#custom-range-div input[name=from]').attr('disabled', true);
            $('#custom-range-div input[name=to]').attr('disabled', true);

        } else if (value == 'custom-range') {

            $('#custom-range-div').css('display', 'block');
            $('#custom-range-div input[name=from]').attr('disabled', false);
            $('#custom-range-div input[name=to]').attr('disabled', false);

            $('#month-wise-div').css('display', 'none');
            $('#month-wise-div input[name=date]').attr('disabled', true);


        } else {

            $('#custom-range-div').css('display', 'none');
            $('#custom-range-div input[name=from]').attr('disabled', true);
            $('#custom-range-div input[name=to]').attr('disabled', true);

            $('#month-wise-div').css('display', 'none');
            $('#month-wise-div input[name=date]').attr('disabled', true);


        }
    }
</script>