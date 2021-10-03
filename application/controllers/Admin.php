<?php

use function PHPSTORM_META\type;

defined('BASEPATH') or exit('No direct script access allowed');
class Admin extends CI_Controller
{

    ///check login
    function __construct()
    {
        parent::__construct();
        ///load Helper
        $this->load->helper('functions_helper');
        $this->load->helper('queries_helper');
        if (!$this->session->userdata('logged_in')) {
            redirect('login');
        }
    }

    ///dashboard
    public function index()
    {
        redirect('employees');
        // $title = 'Dashboard';
        // $data = array();
        // $page = 'admin/dashboard';
        // AdminView($page, $data, $title);
    }

    //GetAllEmployeeAcordingToClient
    public function GetAllEmployeeAcordingToClient()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);
            ///store ssm id into session 
            $_SESSION['ssm_id'] = $ssm_id; 
            updateByWhere('ssm_tokens', array('ssm_status' => 'active'), array('ssm_id' => $ssm_id));
            updateByWhere('ssm_tokens', array('ssm_status' => 'inactive'), array('ssm_id != ' => $ssm_id));

            ///Success
            $data = array('code' => 'success', 'message' => 'Record Successful Searched');
            echo json_encode($data);
            die;
        } else { 

            ////Joins
            $tableSelect = "tb1.*, tb2.*";
            $tableInfo = "employee tb1, ssm_tokens tb2-tb2.ssm_id=tb1.ssm_id-left";
            $empl = getByWhere($tableInfo, $tableSelect, array('ssm_status' => 'active'));

            if (isset($empl) && !empty($empl)) {
                $count = count($empl);
                $row = array();
                for ($i = 0; $i < $count; $i++) {
                    $tr = '';
                    $tr = $tr . "<tr>" . "<td>" . $empl[$i]->emplId . "</td>" . "<td>" . $empl[$i]->name . "</td>" . "<td>" . $empl[$i]->email . "</td>";
                    $button = "";
                    $id = urlencode(base64_encode($empl[$i]->emplId));
                    $button .= '<td class="actions-links"><a type="button" href="' . base_url('employee/' . $id) . '>"><i class="mdi mdi-airplay"></i></a></td></tr>';
                    $tr = $tr . $button;
                    array_push($row, $tr);
                }

                $data['count'] = $count;
                $data['tr'] = $row;
                $data['ssm_id'] = $empl[0]->ssm_id;
            } else {
                $data = array();
            }

            $title = 'Employee List';
            $page = 'admin/employees';
            AdminView($page, $data, $title);
        }
    }

    ///SingleEmployeeData
    public function SingleEmployeeData()
    {
        $id = $this->uri->segment(2);
        $id =  base64_decode(urldecode($id));
        $ssm_id =  $_SESSION['ssm_id'];
        $records = GetCommonData($ssm_id);

        ///company email
        $_SESSION['company_email'] = $records->companies[0]->employments[0]->email;
        $data = array();
        ////employee list
        $empl = $records->companies[0]->employments;

        if (isset($empl) && !empty($empl)) {
            for ($i = 0; $i < count($empl); $i++) {
                if ($empl[$i]->id == $id) {

                    ///profile details
                    $data['profile'] = array(
                        "id" => $empl[$i]->id,
                        "name" => $empl[$i]->name,
                        "email" => $empl[$i]->email,
                        "registered" => $empl[$i]->registered,
                        "lastActive" => $empl[$i]->lastActive,
                        "payRate" => $empl[$i]->payRate,
                        "endDate" => $empl[$i]->endDate,
                        "inPause" => $empl[$i]->inPause,
                        "activityStatus" => $empl[$i]->activityStatus,
                    );

                    ///config details
                    $data['config'] = array(
                        "autoPauseMinutes" => $empl[$i]->config->autoPauseMinutes,
                        "disableOfflineTime" => $empl[$i]->config->disableOfflineTime,
                        "disableScreenshotNotification" => $empl[$i]->config->disableScreenshotNotification,
                        "disableActivityLevel" => $empl[$i]->config->disableActivityLevel,
                        "currency" => $empl[$i]->config->currency,
                        "weeklyLimit" => $empl[$i]->config->weeklyLimit,
                        "weekStartDay" => $empl[$i]->config->weekStartDay,
                        "disableAppTracking" => $empl[$i]->config->disableAppTracking,
                        "dateFormat" => $empl[$i]->config->dateFormat,
                    );

                    ///Total projects
                    $data['totalProjects'] = count($records->companies[0]->employments[$i]->projects);

                    $projects = $empl[$i]->projects;
                    $activeProjects = array();
                    for ($j = 0; $j < count($projects); $j++) {
                        $matchPro = getByWhere('projects', '*', array('project_id' => $projects[$j]->projectId, 'ssm_id' => $ssm_id));
                        if ($matchPro) {
                            array_push($activeProjects, $projects[$j]->projectId);
                        }
                    }

                    $data['projects'] = $activeProjects;
                    break;
                }
            }
        }

        $data['ssm_id'] = $ssm_id;
        $data['emplId'] = $id;

        $title = 'Single Employee Details';
        $page = 'admin/employee';
        AdminView($page, $data, $title);
    }


    //GetAllProjectAcordingToClient
    public function GetAllProjectAcordingToClient()
    {
        if ($this->input->is_ajax_request()) {

            extract($_POST);


            $findData = updateByWhere('ssm_tokens', array('ssm_status' => 'active'), array('ssm_id' => $ssm_id));

            if ($findData) {
                updateByWhere('ssm_tokens', array('ssm_status' => 'inactive'), array('ssm_id != ' => $ssm_id));
                $_SESSION['ssm_id'] = $ssm_id;

                ///form date 
                if ($date_type == 'month-wise') {

                    $_SESSION['date_type'] = 'month-wise';
                    unset($_SESSION['from_date']);
                    unset($_SESSION['to_date']);

                    $form_date = date("m/Y", strtotime($date));
                    $month = date('M', strtotime($date));
                    $year = date('Y', strtotime($date));
                    $_SESSION['date'] = $date;
                    $_SESSION['month'] = $month;
                    $_SESSION['year'] = $year;
                    ///current date
                    $current_date = date('m/Y');
                }

                if (isset($form_date) && isset($current_date) && ($form_date == $current_date)) {

                    $_SESSION['history'] = 'inactive';

                    ///search by pm 
                    if (isset($manager_id) && !empty($manager_id)) {

                        ////for All
                        if ($manager_id == 'All') {
                            updateByWhere('projects', array('pm_status' => 'active'), array('manager_id >=' => 0));

                            $_SESSION['pm_search'] = 'All';
                        }

                        ////for single
                        if ($manager_id != 'All') {
                            updateByWhere('projects', array('pm_status' => 'active'), array('manager_id' => $manager_id));
                            $_SESSION['pm_search'] = $manager_id;
                            updateByWhere('projects', array('pm_status' => 'inactive'), array('manager_id !=' => $manager_id));
                        }
                    }

                    ///search by type
                    if (isset($type) && !empty($type)) {

                        ////for All
                        if ($type == 'All') {

                            $dne = updateByWhere('projects', array('project_type_status' => 'active'), array('project_type' => 'DNE'));

                            if ($dne) {
                                updateByWhere('projects', array('project_type_status' => 'active'), array('project_type' => 'Fixed'));
                            }
                            $_SESSION['type_search'] = 'All';
                        }

                        ////for single
                        if ($type != 'All') {


                            updateByWhere('projects', array('project_type_status' => 'inactive'), array('project_type !=' => $type));

                            updateByWhere('projects', array('project_type_status' => 'active'), array('project_type' => $type));
                            $_SESSION['type_search'] = $type;
                        }
                    }
                } else if (isset($form_date) && isset($current_date) && ($form_date != $current_date)) {

                    $_SESSION['history'] = 'active';

                    ///month and year search 
                    if (isset($month) && isset($year)) {
                        updateByWhere('projects_history', array('year_status' => 'active', 'month_status' => 'active'), array('month_name' => $month, 'year' => $year));
                        updateByWhere('projects_history', array('year_status' => 'inactive', 'month_status' => 'inactive'), array('month_name !=' => $month, 'year !=' => $year));
                    }

                    ///search by pm 
                    if (isset($manager_id) && !empty($manager_id)) {

                        ////for All
                        if ($manager_id == 'All') {
                            updateByWhere('projects_history', array('pm_status' => 'active'), array('manager_id >=' => 0));

                            $_SESSION['projects_history'] = 'All';
                        }

                        ////for single
                        if ($manager_id != 'All') {
                            updateByWhere('projects_history', array('pm_status' => 'active'), array('manager_id' => $manager_id));
                            $_SESSION['pm_search'] = $manager_id;
                            updateByWhere('projects_history', array('pm_status' => 'inactive'), array('manager_id !=' => $manager_id));
                        }
                    }

                    ///search by type
                    if (isset($type) && !empty($type)) {

                        ////for All
                        if ($type == 'All') {

                            $dne = updateByWhere('projects_history', array('project_type_status' => 'active'), array('project_type' => 'DNE'));

                            if ($dne) {
                                updateByWhere('projects_history', array('project_type_status' => 'active'), array('project_type' => 'Fixed'));
                            }
                            $_SESSION['type_search'] = 'All';
                        }

                        ////for single
                        if ($type != 'All') {


                            updateByWhere('projects_history', array('project_type_status' => 'inactive'), array('project_type !=' => $type));

                            updateByWhere('projects_history', array('project_type_status' => 'active'), array('project_type' => $type));
                            $_SESSION['type_search'] = $type;
                        }
                    }
                } else {

                    if ($date_type == 'custom-range') {

                        $_SESSION['history'] = 'inactive';
                        ///search by pm 
                        if (isset($manager_id) && !empty($manager_id)) {

                            ////for All
                            if ($manager_id == 'All') {
                                updateByWhere('projects', array('pm_status' => 'active'), array('manager_id >=' => 0));

                                $_SESSION['pm_search'] = 'All';
                            }

                            ////for single
                            if ($manager_id != 'All') {
                                updateByWhere('projects', array('pm_status' => 'active'), array('manager_id' => $manager_id));
                                $_SESSION['pm_search'] = $manager_id;
                                updateByWhere('projects', array('pm_status' => 'inactive'), array('manager_id !=' => $manager_id));
                            }
                        }


                        ///search by type
                        if (isset($type) && !empty($type)) {

                            ////for All
                            if ($type == 'All') {

                                $dne = updateByWhere('projects', array('project_type_status' => 'active'), array('project_type' => 'DNE'));

                                if ($dne) {
                                    updateByWhere('projects', array('project_type_status' => 'active'), array('project_type' => 'Fixed'));
                                }
                                $_SESSION['type_search'] = 'All';
                            }

                            ////for single
                            if ($type != 'All') {


                                updateByWhere('projects', array('project_type_status' => 'inactive'), array('project_type !=' => $type));

                                updateByWhere('projects', array('project_type_status' => 'active'), array('project_type' => $type));
                                $_SESSION['type_search'] = $type;
                            }
                        }
                    }
                }

                if ($date_type == 'custom-range') {  

                    $_SESSION['date_type'] = 'custom-range'; 
                    $_SESSION['manager_id'] = $manager_id;
                    $_SESSION['type'] = $type;
                    $_SESSION['from_date'] = $from;
                    $_SESSION['to_date'] = $to;

                    $from = IntegerDate($from);
                    $to = IntegerDate($to);
                    $result = $this->CustomeRange($from, $to, $ssm_id);

                    if ($result == 'ok') {
                        ///Success
                        $data = array('code' => 'success', 'message' => 'Search Completed');
                        echo json_encode($data);
                        die;
                    }
                } else {
                    ///Success
                    $data = array('code' => 'success', 'message' => 'Record Successful Searched');
                    echo json_encode($data);
                    die;
                }
            } else {

                ///credential not correct
                $data = array('code' => 'warning', 'message' => 'Record Not Found!');
                echo json_encode($data);
                die;
            }

            ///Ajax Part End 
        } else {

            ///view Load Part Start

            if ($_SESSION['history'] == 'inactive') {
                ////Joins
                $tableSelect = "tb1.*, tb2.*";
                $tableInfo = "projects tb1, ssm_tokens tb2-tb2.ssm_id=tb1.ssm_id-left";
                $project = getByWhere($tableInfo, $tableSelect, array('tb2.ssm_status' => 'active', 'tb1.project_type_status' => 'active', 'tb1.pm_status' => 'active', 'client_id' => NULL, 'endDate' => NULL), array('status', 'ASC'));
            } else {
                ////Joins
                $tableSelect = "tb1.*, tb2.*";
                $tableInfo = "projects_history tb1, ssm_tokens tb2-tb2.ssm_id=tb1.ssm_id-left";
                $project = getByWhere($tableInfo, $tableSelect, array('tb2.ssm_status' => 'active', 'tb1.project_type_status' => 'active', 'tb1.pm_status' => 'active', 'tb1.month_status' => 'active', 'tb1.year_status' => 'active', 'month_name' => $_SESSION['month'], 'year' => $_SESSION['year'], 'client_id' => NULL, 'endDate' => NULL), array('status', 'ASC'));
            }

            if (isset($_SESSION['date_type']) && ($_SESSION['date_type'] == 'month-wise')) {
                $row = array();
                if (isset($project) && !empty($project)) {

                    $count = count($project);

                    $total_monthly_limits = 0;
                    $total_monthly_hourse = 0;
                    for ($i = 0; $i < $count; $i++) {


                        if ($project[$i]->status == 'active') {
                            ///Monthly Report
                            if ($project[$i]->project_type == 'Fixed') {
                                $limit = $project[$i]->total_limit;
                                $work = $project[$i]->total_work;
                            } else {
                                $limit = $project[$i]->month_limit;
                                $work = $project[$i]->total_work_by_month;
                            }

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

                            ///count total monthly limits
                            if (is_numeric($project[$i]->month_limit)) {
                                $total_monthly_limits = $total_monthly_limits + $project[$i]->month_limit;
                            }


                            ///count total monthly hourse
                            if (is_numeric($project[$i]->total_work_by_month)) {

                                $total_monthly_hourse = $total_monthly_hourse + $project[$i]->total_work_by_month;
                            }


                            $tr = '';


                            $tr = $tr . "<tr>" . "<td>" . substr($project[$i]->project_id, 0, 5) . '...' . "</td>" . "<td>" . $project[$i]->name  . "</td>" . "<td>" . $work . "</td>" . "<td>" . $limit . "</td>" . "<td>" . $total_work_time . "</div>" . "<td>" . substr($project[$i]->emails, 0, 20) . '..' . "</td>" . "<td>" . $project[$i]->status  . "</td>";
                            $button = "";
                            $id = urlencode(base64_encode($project[$i]->project_id));
                            $button .= '<td class="actions-links"><a   data-toggle="modal" data-target="#projectModal" data-whatever="' . $project[$i]->project_id . '"><i class="mdi mdi-pencil-box"></i></a>' .
                                '<a   href="' . base_url('project_details/' . $id) . '" ><i class="mdi mdi-airplay"></i></a></td></tr>';
                            $tr = $tr . $button;
                            array_push($row, $tr);
                        }
                    }


                    $data['count'] = count($row);
                    $data['tr'] = $row;


                    ///pie chart
                    if ($total_monthly_limits > $total_monthly_hourse) {
                        $data['total_monthly_limits'] = $total_monthly_limits;
                        $data['different_hourse'] = $total_monthly_limits - $total_monthly_hourse;
                        $data['different_title'] = "Remaining Hours";
                        $data['total_monthly_hourse'] = $total_monthly_hourse;
                    } else if ($total_monthly_limits == 0 && $total_monthly_hourse == 0) {
                        $data['total_monthly_limits'] =  1;
                        $data['different_hourse'] = 0;
                        $data['different_title'] = "Remaning Hours";
                        $data['total_monthly_hourse'] =  1;
                    } else {
                        $data['total_monthly_limits'] = $total_monthly_limits;
                        $data['different_hourse'] = 0;
                        $data['different_title'] = "Remaning Hours";
                        $data['total_monthly_hourse'] = $total_monthly_hourse;
                    }

                    ///ssm_id
                    $data['ssm_id'] = $project[0]->ssm_id;
                    $_SESSION['ssm_id'] = $project[0]->ssm_id;
                } else {
                    $data = array();
                }
            } else {
                $row = array();
                if (isset($project) && !empty($project)) {

                    $count = count($project);
                    $total_monthly_limits = 0;
                    $total_monthly_hourse = 0;

                    for ($i = 0; $i < $count; $i++) {

                        if ($project[$i]->status == 'active') {
                            $tr = '';
                            $tr = $tr . "<tr>" . "<td>" . substr($project[$i]->project_id, 0, 5) . '...' . "</td>" . "<td>" . $project[$i]->name  . "</td>" . "<td>" . $_SESSION['from_date'] . "</td>" . "<td>" . $_SESSION['to_date'] . "</td>" . "<td>" . $project[$i]->custom_hours . "</div>" . "<td>" . substr($project[$i]->emails, 0, 20) . '..' . "</td>" . "<td>" . $project[$i]->status  . "</td>";
                            $button = "";
                            $id = urlencode(base64_encode($project[$i]->project_id));
                            $button .= '<td class="actions-links"> ' .
                                '<a   href="' . base_url('project_details/' . $id) . '" ><i class="mdi mdi-airplay"></i></a></td></tr>';
                            $tr = $tr . $button;
                            array_push($row, $tr);
                        }
                    }

                    $data['count'] = count($row);
                    $data['tr'] = $row;

                    ///ssm_id
                    $data['ssm_id'] = $project[0]->ssm_id;
                    $_SESSION['ssm_id'] = $project[0]->ssm_id;
                } else {
                    $data = array();
                }
            }


            ////get clients against this ssm tokens 
            $tableSelect = "tb1.*, tb2.*";
            $tableInfo = "clients tb1, ssm_tokens tb2-tb2.ssm_id=tb1.ssm_id-left";
            $clients = getByWhere($tableInfo, $tableSelect, array('ssm_status' => 'active'));



            if (isset($clients) && !empty($clients)) {
                $check_clients = array();
                for ($i = 0; $i < count($clients); $i++) {
                    $rec = getByWhere('projects', '*', array('client_id' => $clients[$i]->clientId, 'endDate' => NULL, 'pm_status' => 'active', 'project_type_status' => 'active'));
                    if ($rec) {
                        array_push($check_clients, $clients[$i]);
                    }
                }

                $data['clients'] = $check_clients;
            }

            $title = 'Project List';
            $page = 'admin/projects';
            AdminView($page, $data, $title);
        }
    }

    ///GetSingleProjectDetails
    public function GetSingleProjectDetails()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);
            $check = updateByWhere('projects', $_POST, array('project_id' => $project_id));
            if ($check) {
                ///Success
                $data = array('code' => 'success', 'message' => 'Limit Has Been Updated');
                echo json_encode($data);
                die;
            } else {
                ///credential not correct
                $data = array('code' => 'warning', 'message' => 'Record Not Found!');
                echo json_encode($data);
                die;
            }
        } else {


            $id = $this->uri->segment(2);
            $id =  base64_decode(urldecode($id));
            $data['records'] = getByWhere('projects', '*', array('project_id' => $id));



            ///ssm_id
            $ssm_id = $data['records'][0]->ssm_id;


            $tableSelect = "tb1.*, tb2.*";
            $tableInfo = "month_limit tb1, employee tb2-tb2.emplId=tb1.emplId-left";
            $data['emp'] = getByWhere($tableInfo, $tableSelect, array('project_id' => $id));


            $projectHistory = getByWhere('projects_history', '*', array('project_id' => $id, 'month_name !=' => date('M')));
            if (isset($projectHistory) && !empty($projectHistory)) {
                $data['projectHistory'] = $projectHistory;
            }



            ///Get estimation_link From Project Config Table 
            $estimation_link = getByWhere('projects_config', '*', array('project_id' => $id, 'estimation_link !=' => 'No Links'));
            if (isset($estimation_link) && !empty($estimation_link)) {

                $data['estimation_link'] = $estimation_link[0]->estimation_link;
            }

            ///Get estimation_link From Project Config Table 
            $completed_task_link = getByWhere('projects_config', '*', array('project_id' => $id, 'completed_task_link !=' => 'No Links'));
            if (isset($completed_task_link) && !empty($completed_task_link)) {

                $data['completed_task_link'] = $completed_task_link[0]->completed_task_link;
            }

            ///get notes list
            $notes = getByWhere('notes', '*', array('project_id' => $id));
            if (isset($notes) && !empty($notes)) {
                $data['notes'] = $notes;
            }

            ///get employee 
            $empl = getByWhere('employee', '*', array('ssm_id' => $ssm_id));
            if (isset($empl) && !empty($empl)) {
                $data['employee_list'] = $empl;
            }

            ///get manger_name 
            $manager_id = getByWhere('projects', '*', array('project_id' => $id));
            if (isset($manager_id) && !empty($manager_id)) {
                $data['manager_id'] = $manager_id[0]->manager_id;
            }

            ///ssm_id
            $data['ssm_id'] = $ssm_id;

            $title = 'Single Project Detail';
            $page = 'admin/project';
            AdminView($page, $data, $title);
        }
    }


    ////cron jobe function
    function CustomeRange($from_time = null, $to_time = null, $ssm_id = null)
    {


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
                        $data = GetActivities($empl[$i]->id,  $from_time, $to_time, $ssm_id);
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
            }


            ///3 : Update Projects Table
            $projects = $records->companies[0]->projects;
            if (isset($projects) && (!empty($projects))) {
                for ($i = 0; $i < count($projects); $i++) {
                    $deletedProject = $projects[$i]->endDate;
                    if (empty($deletedProject)) {
                        //data
                        $data = array();
                        $data['custom_hours'] = ProjectCustomCoveredHours($projects[$i]->id);
                        $projectData = array();
                        $where = array('project_id' => $projects[$i]->id, 'ssm_id' => $ssm_id);
                        $projectData = getByWhere('projects', '*', $where);
                        if ($projectData) {
                            updateByWhere('projects', $data, $where);
                        }
                    }
                }
            }
        }
        return 'ok';
    }

    ///Logout 
    public function Logout()
    { 
        session_destroy();
        redirect('login');
    }
}
