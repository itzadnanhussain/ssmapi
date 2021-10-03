<?php
defined('BASEPATH') or exit('No direct script access allowed');

class CronJob extends CI_Controller
{

    ///check login
    function __construct()
    {
        parent::__construct();
        ///load Helper
        $this->load->helper('functions_helper');
        $this->load->helper('queries_helper');
    }


    //testcorn
    // public function Test()
    // {
    //     addNew('test', array('date' => date('h:i:s')));
    // } 

    ///CroneJobes
    public function GetCronJob()
    {
        $check = $this->CronJob();
        if ($check) {
            echo 'Done CroneJobes';
            die;
        }
    }





    //Monthfromtime Update
    public function SetMonthFromTimeLimit()
    {
        date_default_timezone_set('America/New_York');
        ///Get Last Month Name
        $lastmonth = date('M', strtotime("-1 month"));
        $currentmonth = date('M');
        updateByWhere('cronjob', array('execute_time' => date('Y-m-d h:i:A')), array('id' => 1));




        ///Get Previous Month Data And Store into project_year_records
        $projects = getByWhere('projects', '*', array('month_name' => $lastmonth));
        
        // $projects = getByWhere('projects', '*', array('month_name' => $currentmonth));
        if (isset($projects) && !empty($projects)) {
            $count = count($projects);
            for ($i = 0; $i < $count; $i++) {

                $row = array();
                $row['project_id'] = $projects[$i]->project_id;
                $row['manager_id'] = ManagerId($projects[$i]->project_id);
                $row['project_type'] = $projects[$i]->project_type;
                $row['ssm_id'] = $projects[$i]->ssm_id;
                $row['name'] = ProjectName($projects[$i]->project_id);
                $row['color'] = ProjectColor($projects[$i]->project_id);
                $row['client_id'] = ProjectClientId($projects[$i]->project_id);
                $row['endDate'] = ProjectEndDate($projects[$i]->project_id);
                $row['billed_hours'] = $projects[$i]->billed_hours;
                $row['billed'] = $projects[$i]->billed;
                $row['emails'] = ProjectEmails($projects[$i]->project_id);
                $row['month_name'] = $projects[$i]->month_name;
                $row['year'] = date('Y');
                $row['month_limit'] = $projects[$i]->month_limit;
                $row['total_work_by_month'] = $projects[$i]->total_work_by_month;
                $row['total_limit'] = $projects[$i]->total_limit;
                $row['total_work'] = $projects[$i]->total_work;
                $row['month_flag25'] = ProjectMonthFlag25($projects[$i]->project_id);
                $row['month_flag50'] = ProjectMonthFlag50($projects[$i]->project_id);
                $row['month_flag75'] = ProjectMonthFlag75($projects[$i]->project_id);
                $row['month_flag100'] = ProjectMonthFlag100($projects[$i]->project_id);
                $row['month_flag125'] = ProjectMonthFlag125($projects[$i]->project_id);
                $row['month_flag150'] = ProjectMonthFlag150($projects[$i]->project_id);
                $row['status'] = ProjectStatus($projects[$i]->project_id);
                $row['pm_status'] = $projects[$i]->pm_status;
                $row['project_type_status'] = $projects[$i]->project_type_status;
                // $row['year_status'] = $projects[$i]->year_status;
                // $row['month_status'] = $projects[$i]->month_status;

                ///set where condition
                $check = getByWhere('projects_history', '*', array('project_id' => $projects[$i]->project_id, 'month_name' => $projects[$i]->month_name));
                if (empty($check)) {
                    addNew('projects_history', $row);
                } else {
                    updateByWhere('projects_history', $row, array('project_id' => $projects[$i]->project_id, 'month_name' => $projects[$i]->month_name));
                }
            }
        }

        ///update month name
        updateByWhere('projects', array('month_name' => $currentmonth, 'total_work_by_month' => 0, 'billed_hours' => 0), array('month_name' => $lastmonth));

    }

    public function Testcron()
    {
        date_default_timezone_set('America/New_York');
        addNew('test', array('cron_run' => date('Y-m-d h:i:s')));
    }




    ////

    //Monthfromtime Update
    public function Processing()
    {

        //  ini_set('display_errors', 1);
        if ($this->db->insert('test3', array('email' => 'test@gmail.com'))) {
            echo $this->db->insert_id();
            die;
        } else {
            echo 0;
            die;
        }
    }



    ////cron jobe function
    function CronJob()
    {
        set_time_limit(500); 

        ///Get Data Table  
        $dataTable = getByWhere('ssm_tokens','*',array('ssm_status'=> 'active'));
        

        $Week_Time = date('Y-m-d h:i:s a', strtotime('monday this week'));
        $Week_Time = IntegerDate($Week_Time);
        $Month_Time = IntegerDate(date('Y-m-01 h:i:s a'));
        updateByWhere('cronjob', array('execute_time' => date('Y-m-d h:i:A')), array('id' => 1));
 
        if (isset($dataTable) && !empty($dataTable)) {
            for ($k = 0; $k < count($dataTable); $k++) {

                if (isset($dataTable[$k]->ssm_id) && !empty($dataTable[$k]->ssm_id)) {

                    ///Get SSM Token
                    $ssm_id = $dataTable[$k]->ssm_id;

                    ///Get All Records According To SSM ID
                    $records = GetCommonData($dataTable[$k]->ssm_id);
                  


                    ///Company Manager Email
                    $AdminEmail = $dataTable[$k]->company_email;



                    if (isset($records) && !empty($records)) {

                        //Company Manager Email Update To System 
                        $AdminEmail = $records->companies[0]->employments[0]->email;
                        updateByWhere('ssm_tokens', array('company_email' => $AdminEmail), array('ssm_id' => $ssm_id));



                        /// Delete Inactive Projects From Project Table 
                        deleteRecordWhere('projects', array('status' => 'inactive', 'endDate !=' => NULL));
                        deleteRecordWhere('month_limit', array('ssm_id' => $ssm_id));
                        deleteRecordWhere('week_limit', array('ssm_id' => $ssm_id));
                        deleteRecordWhere('project_total_work', array('ssm_id' => $ssm_id));



                        /// 1: Update Clients 
                        $clients = $records->companies[0]->clients;
                        if (isset($clients) && !empty($clients)) {
                            for ($i = 0; $i < count($clients); $i++) {
                                $client_data = array();
                                $client_data['clientId'] = $clients[$i]->clientId;
                                $client_data['clientName'] = $clients[$i]->clientName;
                                $client_data['companyId'] = $clients[$i]->companyId;
                                $client_data['ssm_id'] = $ssm_id;
                                $get_client = getByWhere('clients', '*', array('clientId' => $clients[$i]->clientId));
                                if (empty($get_client)) {
                                    addNew('clients', $client_data);
                                } else {
                                    updateByWhere('clients', $client_data, array('clientId' => $clients[$i]->clientId));
                                }
                            }
                        }
                        ////Close Clients Section  

                        /// 2: Update Employments 
                        $empl = $records->companies[0]->employments;
                        if (isset($empl) && !empty($empl)) {

                            for ($i = 0; $i < count($empl); $i++) {

                                $check = getByWhere('employee', '*', array('ssm_id' => $ssm_id, 'emplId' => $empl[$i]->id));

                                //  $check = getByWhere('employee', '*', array('ssm_id' => $ssm_id, 'emplId' => '175931'));
                                $data = array();
                                $data = array(
                                    'ssm_id' => $ssm_id,
                                    'emplId' => $empl[$i]->id,
                                    'name' => $empl[$i]->name,
                                    'email' => $empl[$i]->email,
                                );

                                if ($check) {

                                    ///Update Employee
                                    updateByWhere('employee', $data, array('ssm_id' => $ssm_id, 'emplId' => $empl[$i]->id));


                                    ///Weekly working hourse update 
                                    $to = IntegerDate(date("Y-m-d h:i:sa"));
                                    $data = array();
                                    $data = GetActivities($empl[$i]->id,  $Week_Time, $to, $ssm_id);

                                    if (isset($data) && !empty($data)) {
                                        $new_rec = array();
                                        for ($j = 0; $j < count($data); $j++) {

                                            $from = $data[$j]->from;
                                            $to = $data[$j]->to;
                                            $worktime = TotalHours($from, $to);
                                            $key_check = key_exists($data[$j]->projectId, $new_rec);
                                            if ($key_check) {
                                                $key = $data[$j]->projectId;
                                                $worktime = $new_rec[$key] + $worktime;
                                                $new_rec = array_push_assoc($new_rec, $data[$j]->projectId, $worktime);
                                            } else {
                                                $new_rec = array_push_assoc($new_rec, $data[$j]->projectId, $worktime);
                                            }
                                        }

                                        ///push total time of week  
                                        if (isset($new_rec) && !empty($new_rec)) {
                                            foreach ($new_rec as $key => $value) {
                                                $getData = getByWhere('week_limit', '*', array('emplId' => $data[0]->employmentId, 'project_id' => $key));
                                                if ($getData) {
                                                    updateByWhere('week_limit', array('total_work_hours' => $value), array('emplId' => $data[0]->employmentId, 'project_id' => $key));
                                                } else {

                                                    $data1['project_id'] = $key;
                                                    $data1['emplId'] = $data[0]->employmentId;
                                                    // $data1['emplId'] = '103565';
                                                    $data1['total_work_hours'] = $value;
                                                    $data1['ssm_id'] = $ssm_id;
                                                    addNew('week_limit', $data1);
                                                }
                                            }
                                        }
                                    }



                                    ///Total working hourse update
                                    $monthly_from_time = 0;
                                    $to = IntegerDate(date("Y-m-d h:i:sa"));
                                    $data = array();
                                    $data = GetActivities($empl[$i]->id,  $monthly_from_time, $to, $ssm_id);

                                    if (isset($data) && !empty($data)) {

                                        $new_rec = array();
                                        for ($k = 0; $k < count($data); $k++) {

                                            $from = $data[$k]->from;
                                            $to = $data[$k]->to;
                                            $worktime = TotalHours($from, $to);

                                            $key_check = key_exists($data[$k]->projectId, $new_rec);
                                            if ($key_check) {
                                                $key = $data[$k]->projectId;
                                                $worktime = $new_rec[$key] + $worktime;
                                                $new_rec = array_push_assoc($new_rec, $data[$k]->projectId, $worktime);
                                            } else {
                                                $new_rec = array_push_assoc($new_rec, $data[$k]->projectId, $worktime);
                                            }
                                        }


                                        ///push total working to  
                                        $records_count = count($new_rec);
                                        if (isset($records_count) && !empty($records_count)) {
                                            foreach ($new_rec as $key => $value) {
                                                $getData = getByWhere('project_total_work', '*', array('emplId' => $data[0]->employmentId, 'project_id' => $key));
                                                if ($getData) {
                                                    updateByWhere('project_total_work', array('total_work_hours' => $value), array('emplId' => $data[0]->employmentId, 'project_id' => $key));
                                                } else {
                                                    $data1 = array();
                                                    $data1['project_id'] = $key;
                                                    $data1['emplId'] = $data[0]->employmentId;
                                                    $data1['total_work_hours'] = $value;
                                                    $data1['ssm_id'] = $ssm_id;
                                                    addNew('project_total_work', $data1);
                                                }
                                            }
                                        }
                                    }


                                    ///monthl working hourse update 
                                    $to = IntegerDate(date("Y-m-d h:i:s a"));
                                    $data = array();
                                    $data = GetActivities($empl[$i]->id,  $Month_Time, $to, $ssm_id);

                                    // $data = GetActivities('103566',  $monthly_from_time, $to, $ssm_id);

                                    if (isset($data) && !empty($data)) {

                                        $new_rec = array();
                                        for ($k = 0; $k < count($data); $k++) {

                                            $from = $data[$k]->from;
                                            $to = $data[$k]->to;
                                            $worktime = TotalHours($from, $to);

                                            // echo $from . "<br>";
                                            // echo $to . "<br>";
                                            // echo $data[0]->note . "<br>";
                                            // echo $worktime . "<br>";
                                            // die;



                                            $key_check = key_exists($data[$k]->projectId, $new_rec);
                                            if ($key_check) {
                                                $key = $data[$k]->projectId;
                                                $worktime = $new_rec[$key] + $worktime;
                                                $new_rec = array_push_assoc($new_rec, $data[$k]->projectId, $worktime);
                                            } else {
                                                $new_rec = array_push_assoc($new_rec, $data[$k]->projectId, $worktime);
                                            }
                                        }




                                        ///push total time of month  
                                        $records_count = count($new_rec);
                                        if (isset($records_count) && !empty($records_count)) {
                                            foreach ($new_rec as $key => $value) {
                                                $getData = getByWhere('month_limit', '*', array('emplId' => $data[0]->employmentId, 'project_id' => $key));
                                                // $getData = getByWhere('week_limit', '*', array('emplId' => '103565', 'project_id' => $key));
                                                // echo '<pre>';
                                                // print_r($getData);
                                                // echo '</pre>';
                                                // die;
                                                if ($getData) {
                                                    updateByWhere('month_limit', array('total_work_hours' => $value), array('emplId' => $data[0]->employmentId, 'project_id' => $key));
                                                } else {
                                                    $data1 = array();
                                                    $data1['project_id'] = $key;
                                                    $data1['emplId'] = $data[0]->employmentId;
                                                    // $data1['emplId'] = '103565';
                                                    $data1['total_work_hours'] = $value;
                                                    $data1['ssm_id'] = $ssm_id;
                                                    addNew('month_limit', $data1);
                                                }
                                            }
                                        }
                                    }
                                } else {
                                    addNew('employee', $data);
                                }
                            }
                        }

                        ///Close Employee Section 


                        ///3 : Update Projects Table
                        $projects = $records->companies[0]->projects;
                        if (isset($projects) && (!empty($projects))) {
                            for ($i = 0; $i < count($projects); $i++) {
                                $deletedProject = $projects[$i]->endDate;
                                if (empty($deletedProject)) {
                                    //data
                                    $data = array();
                                    $data['project_id'] = $projects[$i]->id;
                                    $data['name'] = $projects[$i]->name;
                                    $data['color'] = $projects[$i]->color;
                                    $data['ssm_id'] = $ssm_id;
                                    $data['month_name'] = date('M');
                                    $data['client_id'] = $projects[$i]->clientId;
                                    $data['endDate'] = $projects[$i]->endDate;
                                    $data['total_work_by_week'] = ProjectTotalCoveredWeekHours($projects[$i]->id);
                                    $data['total_work_by_month'] = ProjectTotalCoveredMonthHours($projects[$i]->id);
                                    $data['total_work'] = ProjectTotalCoveredHours($projects[$i]->id);


                                    $projectData = array();
                                    $where = array('project_id' => $projects[$i]->id, 'ssm_id' => $ssm_id);
                                    $projectData = getByWhere('projects', '*', $where);

                                    if (empty($projectData)) {
                                        addNew('projects', $data);
                                    } else {

                                        updateByWhere('projects', $data, $where);

                                        ///Monthly Report
                                        if ($projectData[0]->project_type == 'Fixed') {
                                            $limit = $projectData[0]->total_limit;
                                            $work = $projectData[0]->total_work;
                                        } else {
                                            $limit = $projectData[0]->month_limit;
                                            $work = $projectData[0]->total_work_by_month;
                                        }

                                        if ($limit > 0 && $work > 0) {
                                            $result = ($work / $limit) * 100;
                                            ///send notification emails
                                            if ($projectData[0]->emails == 'No Emails' || empty($projectData[0]->emails)) {
                                                $notifi_email = $AdminEmail;
                                            } else {
                                                $notifi_email = $projectData[0]->emails;
                                            }


                                            ///50% Notification
                                            if ($result >= 50 && $result < 75) {
                                                $status = $projectData[0]->month_flag50;
                                                if ($status == 'inactive') {
                                                    $mailData = array();
                                                    $mailData = array(
                                                        'limit' => $projectData[0]->month_limit,
                                                        'work' => $projectData[0]->total_work_by_month,
                                                        'name' => $projectData[0]->name,
                                                        'workdone' => "50%",
                                                        'admin_email' => $notifi_email,
                                                        'email' => 'no-reply@screenshotmonitor.com',

                                                    );

                                                    $checkmail = sendEmailForProjectReport($mailData);
                                                    if ($checkmail) {
                                                        updateByWhere('projects', array('month_flag50' => 'active', 'month_flag75' => 'inactive', 'month_flag100' => 'inactive', 'month_flag125' => 'inactive', 'month_flag150' => 'inactive'), $where);
                                                    }
                                                }
                                            }


                                            ///75% Notification
                                            if ($result >= 75 && $result < 100) {
                                                $status = $projectData[0]->month_flag75;
                                                if ($status == 'inactive') {
                                                    $mailData = array();
                                                    $mailData = array(
                                                        'limit' => $projectData[0]->month_limit,
                                                        'name' => $projectData[0]->name,
                                                        'work' => $projectData[0]->total_work_by_month,
                                                        'workdone' => "75%",
                                                        'admin_email' => $notifi_email,
                                                        'email' => 'no-reply@screenshotmonitor.com',

                                                    );

                                                    $checkmail = sendEmailForProjectReport($mailData);
                                                    if ($checkmail) {
                                                        updateByWhere('projects', array('month_flag50' => 'inactive', 'month_flag75' => 'active', 'month_flag100' => 'inactive', 'month_flag125' => 'inactive', 'month_flag150' => 'inactive'), $where);
                                                    }
                                                }
                                            }


                                            ///100% Notification
                                            if ($result >= 100 && $result < 125) {
                                                $status = $projectData[0]->month_flag100;
                                                if ($status == 'inactive') {
                                                    $mailData = array();
                                                    $mailData = array(
                                                        'limit' => $projectData[0]->month_limit,
                                                        'work' => $projectData[0]->total_work_by_month,
                                                        'name' => $projectData[0]->name,
                                                        'workdone' => "100%",
                                                        'admin_email' => $notifi_email,
                                                        'email' => 'no-reply@screenshotmonitor.com',

                                                    );

                                                    $checkmail = sendEmailForProjectReport($mailData);
                                                    if ($checkmail) {
                                                        updateByWhere('projects', array('month_flag50' => 'inactive', 'month_flag75' => 'inactive', 'month_flag100' => 'active', 'month_flag125' => 'inactive', 'month_flag150' => 'inactive'), $where);
                                                    }
                                                }
                                            }

                                            ///125% Email Notification 
                                            if ($result >= 125 && $result < 150) {
                                                $status = $projectData[0]->month_flag125;
                                                if ($status == 'inactive') {
                                                    $mailData = array();
                                                    $mailData = array(
                                                        'limit' => $projectData[0]->month_limit,
                                                        'work' => $projectData[0]->total_work_by_month,
                                                        'name' => $projectData[0]->name,
                                                        'workdone' => "125%",
                                                        'admin_email' => $notifi_email,
                                                        'email' => 'no-reply@screenshotmonitor.com',

                                                    );

                                                    $checkmail = sendEmailForProjectReport($mailData);
                                                    if ($checkmail) {
                                                        updateByWhere('projects', array('month_flag50' => 'inactive', 'month_flag75' => 'inactive', 'month_flag100' => 'inactive', 'month_flag125' => 'active', 'month_flag150' => 'inactive'), $where);
                                                    }
                                                }
                                            }


                                            ///150% Email Notification 
                                            if ($result >= 150) {

                                                $status = $projectData[0]->month_flag150;
                                                if ($status == 'inactive') {
                                                    $mailData = array();
                                                    $mailData = array(
                                                        'limit' => $projectData[0]->month_limit,
                                                        'work' => $projectData[0]->total_work_by_month,
                                                        'name' => $projectData[0]->name,
                                                        'workdone' => "150%",
                                                        'admin_email' => $notifi_email,
                                                        'email' => 'no-reply@screenshotmonitor.com',

                                                    );

                                                    $checkmail = sendEmailForProjectReport($mailData);
                                                    if ($checkmail) {
                                                        updateByWhere('projects', array('month_flag50' => 'inactive', 'month_flag75' => 'inactive', 'month_flag100' => 'inactive', 'month_flag125' => 'inactive', 'month_flag150' => 'active'), $where);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        } 
                        ///Close  Projects Section  


                        // Step:3 Send Email According to Weekly Work Status
                        $empl = $records->companies[0]->employments;
                        if (isset($empl) && !empty($empl)) {
                            $count = count($empl);
                            if (isset($count)) {
                                for ($i = 0; $i < $count; $i++) {
                                    $innercount = count($empl[$i]->projects);
                                    $projects = array();
                                    $projects = $empl[$i]->projects;
                                    ///inner loop
                                    for ($j = 0; $j < $innercount; $j++) {

                                        ///get working hours 
                                        $where = array();
                                        $where = array('project_id' => $projects[$j]->projectId, 'emplId' => $projects[$j]->employmentId, 'ssm_id' => $ssm_id);
                                        //  $where = array('projectId' => '6b8978d8-eb2e-706c-8464-042ae5cd2f2a', 'emplId' => '103565', 'clientId'=>$clientId);

                                        $check = getByWhere('week_limit', '*', $where);


                                        if ($check) {

                                            ////work for email 
                                            $limit = $check[0]->total_limit;
                                            $work = $check[0]->total_work_hours;

                                            ///set email for notification
                                            $notifi_email = $check[0]->notifi_email;
                                            if (empty($notifi_email)) {
                                                $notifi_email = $AdminEmail;
                                            }


                                            if ($limit > 0 && $work > 0) {
                                                $result = ($work / $limit) * 100;
                                                ///25% Notification
                                                if ($result >= 25 && $result < 50) {
                                                    $status = $check[0]->flag25;
                                                    if ($status == 'inactive') {
                                                        $mailData = array();
                                                        $mailData = array(
                                                            'id' => $empl[$i]->id,
                                                            'name' => $empl[$i]->name,
                                                            'email' => $empl[$i]->email,
                                                            'project_id' => $projects[$j]->projectId,
                                                            'project_name' => ProjectName($projects[$j]->projectId),
                                                            'workdone' => "25%",
                                                            'admin_email' => $notifi_email,

                                                        );
                                                        $checkmail = sendEmailForEmployeeWeeklyProjectStatus($mailData);
                                                        if ($checkmail) {
                                                            updateByWhere('week_limit', array('flag25' => 'active', 'flag50' => 'inactive', 'flag75' => 'inactive', 'flag100' => 'inactive'), $where);
                                                        }
                                                    }
                                                }

                                                ///50% Notification
                                                if ($result >= 50 && $result < 75) {
                                                    $status = $check[0]->flag50;
                                                    if ($status == 'inactive') {
                                                        $mailData = array();
                                                        $mailData = array(
                                                            'id' => $empl[$i]->id,
                                                            'name' => $empl[$i]->name,
                                                            'email' => $empl[$i]->email,
                                                            'project_id' => $projects[$j]->projectId,
                                                            'project_name' => ProjectName($projects[$j]->projectId),
                                                            'workdone' => "50%",
                                                            'admin_email' => $notifi_email,

                                                        );



                                                        $checkmail = sendEmailForEmployeeWeeklyProjectStatus($mailData);
                                                        if ($checkmail) {
                                                            updateByWhere('week_limit', array('flag25' => 'inactive', 'flag50' => 'active', 'flag75' => 'inactive', 'flag100' => 'inactive'), $where);
                                                        }
                                                    }
                                                }

                                                ///75% Notification
                                                if ($result >= 75 && $result < 100) {
                                                    $status = $check[0]->flag75;
                                                    if ($status == 'inactive') {
                                                        $mailData = array();
                                                        $mailData = array(
                                                            'id' => $empl[$i]->id,
                                                            'name' => $empl[$i]->name,
                                                            'email' => $empl[$i]->email,
                                                            'project_id' => $projects[$j]->projectId,
                                                            'project_name' => ProjectName($projects[$j]->projectId),
                                                            'workdone' => "75%",
                                                            'admin_email' => $notifi_email,

                                                        );
                                                        $checkmail = sendEmailForEmployeeWeeklyProjectStatus($mailData);

                                                        if ($checkmail) {
                                                            updateByWhere('week_limit', array('flag25' => 'inactive', 'flag50' => 'inactive', 'flag75' => 'active', 'flag100' => 'inactive'), $where);
                                                        }
                                                    }
                                                }


                                                ///100% Notification
                                                if ($result >= 100) {
                                                    $status = $check[0]->flag100;
                                                    if ($status == 'inactive') {
                                                        $mailData = array();
                                                        $mailData = array(
                                                            'id' => $empl[$i]->id,
                                                            'name' => $empl[$i]->name,
                                                            'email' => $empl[$i]->email,
                                                            'project_id' => $projects[$j]->projectId,
                                                            'project_name' => ProjectName($projects[$j]->projectId),
                                                            'workdone' => "100%",
                                                            'admin_email' => $notifi_email,

                                                        );


                                                        $checkmail = sendEmailForEmployeeWeeklyProjectStatus($mailData);
                                                        if ($checkmail) {
                                                            updateByWhere('week_limit', array('flag25' => 'inactive', 'flag50' => 'inactive', 'flag75' => 'inactive', 'flag100' => 'active'), $where);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }


                    } else {

                        ///Send Email IF Api Not Respond 
                        ApiSendEmail($AdminEmail);
                    }
                }
            }

            return 1;
        }
        

    }


    ////cron jobe function
    ////cron jobe function
    function CustomeRange()
    {
        echo date('Y-m-d h:i A');
        die;
        $from_time = 1614581602;
        $to_time = 1616414002;
        $ssm_id = '52033l664d7349b4d71e273adbd19e2197745f';

        $this->db->empty_table('custom-range');
        ///Get All Records According To SSM ID
        $records = GetCommonData($ssm_id);

        if (isset($records) && !empty($records)) {

            /// 2: Update Employments 
            $empl = $records->companies[0]->employments;
            if (isset($empl) && !empty($empl)) {

                for ($i = 0; $i < count($empl); $i++) {
                    $check = getByWhere('employee', '*', array('ssm_id' => $ssm_id, 'emplId' => $empl[$i]->id));
                    // $check = getByWhere('employee', '*', array('ssm_id' => $ssm_id, 'emplId' => 175931));

                    if ($check) {
                        $data = array();
                        $data = $this->GetActivities($empl[$i]->id,  $from_time, $to_time, $ssm_id);
                        // $data = GetActivities(175931,  $from, $to, $ssm_id); 

                        if (isset($data) && !empty($data)) {

                            $new_rec = array();
                            for ($k = 0; $k < count($data); $k++) {

                                $from = $data[$k]->from;
                                $to = $data[$k]->to;
                                $worktime = TotalHours($from, $to);

                                $key_check = key_exists($data[$k]->projectId, $new_rec);
                                if ($key_check) {
                                    $key = $data[$k]->projectId;
                                    $worktime = $new_rec[$key] + $worktime;
                                    $new_rec = array_push_assoc($new_rec, $data[$k]->projectId, $worktime);
                                } else {
                                    $new_rec = array_push_assoc($new_rec, $data[$k]->projectId, $worktime);
                                }
                            }

                            ///push total working to  
                            $records_count = count($new_rec);
                            if (isset($records_count) && !empty($records_count)) {
                                foreach ($new_rec as $key => $value) {
                                    $data1 = array();
                                    $data1['project_id'] = $key;
                                    $data1['emplId'] = $data[0]->employmentId;
                                    $data1['total_work'] = $value;
                                    $data1['ssm_id'] = $ssm_id;
                                    addNew('custom-range', $data1);
                                }
                            }
                        }

                        // echo 'wait';
                        // die;
                    }
                }
                echo 'done';
                die;
            }


            ///3 : Update Projects Table
            // $projects = $records->companies[0]->projects;
            // if (isset($projects) && (!empty($projects))) {
            //     for ($i = 0; $i < count($projects); $i++) {
            //         $deletedProject = $projects[$i]->endDate;
            //         if (empty($deletedProject)) {
            //             //data
            //             $data = array();
            //             $data['custom_hours'] = ProjectCustomCoveredHours($projects[$i]->id);
            //             $projectData = array();
            //             $where = array('project_id' => $projects[$i]->id, 'ssm_id' => $ssm_id);
            //             $projectData = getByWhere('projects', '*', $where);
            //             if ($projectData) {
            //                 updateByWhere('projects', $data, $where);
            //             }
            //         }
            //     }
            // }
        }
        echo 'ok';
        die;
    }

    function GetActivities($empId, $from, $to, $clientId)
    {
        // echo $empId."\r\n";
        // echo $from."\r\n";
        // echo $to."\r\n";
        // echo $clientId."\r\n";
        // die;
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://screenshotmonitor.com/api/v2/GetActivities',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS => '[{
            "employmentId": ' . $empId . ',
            "from": ' . $from . ',
            "to": ' . $to . '
        }]',
            CURLOPT_HTTPHEADER => array(
                'X-SSM-Token:  ' . $clientId . '',
                'Content-Type: application/json',
                'Cookie: VisitorID=841914e1-ee52-47f8-bca1-7f2b5fee5a9c'
            ),
        ));

        $response = curl_exec($curl);
        curl_close($curl);
        $data = json_decode($response);
        return $data;
    }
}
