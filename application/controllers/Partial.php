<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Partial extends CI_Controller
{
    ///check login
    function __construct()
    {
        parent::__construct();
        ///load Helper
        $this->load->helper('functions_helper');
        $this->load->helper('queries_helper');
        if ($_SESSION['logged_in'] != true) {
            redirect('login');
        }
    }


    ///ApiSetConfigValue
    public function ApiSetConfigValue()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);
            if ($value == 1) {
                $value = true;
            }
            if ($value == 0) {
                $value = false;
            }

            $response = SetConfigValue($empId, $key, $value);
            if ($response == 1) {
                ///Success
                $data = array('code' => 'success', 'message' => 'Status Updated');
                echo json_encode($data);
                die;
            } else {
                ///credential not correct
                $data = array('code' => 'warning', 'message' => 'Something Wrong');
                echo json_encode($data);
                die;
            }
        }
    }


    ///PostProjectLimit
    public function PostProjectWeeklyLimit()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);
            $where = array('emplId' => $emplId, 'project_id' => $project_id, 'ssm_id' => $ssm_id);
            $data = array(
                'emplId' => $emplId,
                'project_id' => $project_id,
                'total_limit' => $week_limit,
                'notifi_email' => $notifi_email,
                'ssm_id' => $ssm_id
            );
            $check = getByWhere('week_limit', '*', $where);


            if ($check) {
                $update = updateByWhere('week_limit', $data, $where);
                if ($update) {

                    ///Success
                    $data = array('code' => 'success', 'message' => 'Record Has Been Updated');
                    echo json_encode($data);
                    die;
                }
            } else {
                $add = addNew('week_limit', $data);
                if ($add) {
                    $executeCrons = CronJob();
                    if ($executeCrons) {
                        ///Success
                        $data = array('code' => 'success', 'message' => 'Record Has Been Updated');
                        echo json_encode($data);
                        die;
                    }
                }
            }
        }
    }

    ///PostProjectMonthlyLimit
    public function PostProjectMonthlyLimit()
    {
        extract($_POST);
        if (isset($_POST) && !empty($_POST)) {




            $length = strlen($project_id);
            if ($length > 6) {

                if (isset($emails) && !empty($emails)) {
                    $check = updateByWhere('projects', array('emails' => trim($emails)), array('project_id' => $project_id));
                } else if (isset($month_limit) && !empty($month_limit)) {
                    if ($project_type == 'Fixed') {
                        $PostData['total_limit'] = $month_limit;
                    } else {
                        $PostData['month_limit'] = $month_limit;
                    }
                    $check = updateByWhere('projects', $PostData, array('project_id' => $project_id));
                } else {
                    $check = updateByWhere('projects', $_POST, array('project_id' => $project_id));
                }

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

                $client_id = $project_id;
                if (isset($emails) && !empty($emails)) {
                    updateByWhere('clients', array('client_email' => trim($emails)), array('clientId' => $client_id));
                    $check = updateByWhere('projects', array('emails' => trim($emails)), array('client_id' => $client_id));
                }

                if (isset($month_limit) && !empty($month_limit)) {
                    updateByWhere('clients', array('month_limit' => trim($month_limit)), array('clientId' => $client_id));
                    $check = updateByWhere('projects', array('month_limit' => 0), array('client_id' => $client_id));
                }

                if (isset($status) && !empty($status)) {
                    updateByWhere('clients', array('client_status' => trim($status)), array('clientId' => $client_id));
                    $check = updateByWhere('projects', array('status' => trim($status)), array('client_id' => $client_id));
                }

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
            }
        } else {
            ///credential not correct
            $data = array('code' => 'warning', 'message' => 'You Have No Data Selected');
            echo json_encode($data);
            die;
        }
    }

    ///GetDataByProjectID
    public function GetDataByProjectID()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);

            if (isset($project_id) && !empty($project_id)) {

                $length = strlen($project_id);
                if ($length > 6) {
                    $data = getByWhere('projects', '*', array('project_id' => $project_id));
                    if ($data) {
                        $rec = array('code' => 'success', 'data' => $data);
                        echo json_encode($rec);
                        die;
                    }
                } else {
                    $client_id = $project_id;
                    $data = getByWhere('clients', '*', array('clientId' => $client_id));
                    if ($data) {
                        $rec = array('code' => 'successClient', 'data' => $data);
                        echo json_encode($rec);
                        die;
                    }
                }
            }
        }
    }


    ///GetDataByProjectIDForEmployee
    public function GetDataByProjectIDForEmployee()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);

            if (isset($project_id) && !empty($project_id)) {

                $data = getByWhere('week_limit', '*', array('project_id' => $project_id, 'emplId' => $emplId));

                if (isset($data) && !empty($data)) {
                    $projectName = ProjectName($data[0]->project_id);
                    $rec = array('code' => 'success', 'data' => $data, 'projectName' => $projectName);
                    echo json_encode($rec);
                    die;
                } else {
                    ///credential not correct
                    $data = array('code' => 'warning', 'message' => 'Record Not Found!');
                    echo json_encode($data);
                    die;
                }
            }
        }
    }


    ///GetProjectYearRecord
    public function GetProjectYearRecord()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);


            if (isset($id) && !empty($id)) {
                $currentmonth = date('M');

                if ($currentmonth == $month) {

                    $data = getByWhere('projects', '*', array('id' => $id, 'month_name' => $month));
                    if ($data) {
                        $name = ProjectName($data[0]->project_id);
                        $rec = array('code' => 'success', 'data' => $data, 'name' => $name);
                        echo json_encode($rec);
                        die;
                    }
                } else {

                    $data = getByWhere('projects_year_records', '*', array('id' => $id, 'month_name' => $month));
                    if (!empty($data)) {
                        $name = ProjectName($data[0]->project_id);
                        $rec = array('code' => 'success', 'data' => $data, 'name' => $name);
                        echo json_encode($rec);
                        die;
                    } else {
                        ///credential not correct
                        $data = array('code' => 'warning', 'message' => 'Record Not Found!');
                        echo json_encode($data);
                        die;
                    }
                }
            }
        }
    }


    ///PostProjectBilledHours
    public function PostProjectBilledHours()
    {
        if ($this->input->is_ajax_request()) {

            extract($_POST);
            $currentmonth = date('M');
            ///set table 
            if ($currentmonth == $month) {
                $table = 'projects';
            } else {
                $table = 'projects_year_records';
            }

            ///check records
            // $findData=getByWhere($table,'*',array('id'=>$id)); 
            // if($findData)
            // {
            //     $project_type=$findData[0]->project_type;
            //     if($project_type=='Fixed')
            //     {
            //         $work=$findData[0]->total_work;

            //     }
            //     else
            //     {
            //         $work=$findData[0]->total_work_by_month;
            //     }

            // }

            ///check billed hours
            // if($work >= $billed_hours)
            // {
            $check = updateByWhere($table, array('billed_hours' => $billed_hours), array('id' => $id, 'month_name' => $month));
            if ($check) {
                ///Success
                $data = array('code' => 'success', 'message' => 'Updated Billed Hours');
                echo json_encode($data);
                die;
            }

            // }
            // else
            // {
            //     ///credential not correct
            //     $data=array('code'=>'warning','message'=>'You Have Enter Wrong Amount!');
            //     echo json_encode($data);
            //     die;
            // }



        }
    }

    ///GetClientsBySSMToken
    public function GetClientsBySSMToken()
    {
        extract($_POST);
        $rec = getByWhere('clients', '*', array('ssm_id' => $ssm_id));
        if ($rec) {
            ///Success
            $data = array('code' => 'success', 'data' => $rec);
            echo json_encode($data);
            die;
        } else {
            ///credential not correct
            $data = array('code' => 'warning', 'message' => 'Record Not Found!');
            echo json_encode($data);
            die;
        }
    }

    ///ActiveClientId
    public function ActiveClientId()
    {
        extract($_POST);
        if (isset($client_id) && $client_id == 'No Value') {
            ///credential not correct
            $data = array('code' => 'warning', 'message' => 'There is no client');
            echo json_encode($data);
            die;
        } else {
            updateByWhere('clients', array('client_status' => 'inactive'), array('client_status' => 'active'));
            updateByWhere('clients', array('ssm_id' => $ssm_id, 'client_status' => 'active'), array('clientId' => $client_id));
            $rec = getByWhere('projects', '*', array('ssm_id' => $ssm_id, 'client_id' => $client_id));
            if ($rec) {

                ///Success
                $data = array('code' => 'success', 'message' => 'Record Has Been Searched!', 'data' => $rec);
                echo json_encode($data);
                die;
            }
        }
    }

    ///GetDataByClient
    public function GetDataByClient()
    {
        extract($_POST);
        // echo $_SESSION['month'];
        // die;
        if($_SESSION['month'] == date('M'))
        {
            $rec = getByWhere('projects', '*', array('client_id' => $id, 'status' => 'active', 'endDate' => NULL, 'pm_status' => 'active', 'project_type_status' => 'active'));

        }
        else
        {
            
            $rec = getByWhere('projects_history', '*', array('client_id' => $id, 'status' => 'active', 'endDate' => NULL, 'pm_status' => 'active', 'project_type_status' => 'active','month_status' =>'active' , 'year_status' => 'active'));

        }


        if ($rec) {
            ///Success
            $data = array('code' => 'success', 'data' => $rec);
            echo json_encode($data);
            die;
        } else {
            ///credential not correct
            $data = array('code' => 'warning', 'message' => 'Record Not Found!');
            echo json_encode($data);
            die;
        }
    }


    ///SingleProjectSettings
    public function SingleProjectSettings()
    {
        extract($_POST);


        ///check week Limit
        // if (isset($week_limit) && !empty($week_limit)) {
        //     $rec = updateByWhere('projects', array('week_limit' => $week_limit), array('project_id' => $project_id));
        //     if ($rec) {
        //         ///Success
        //         $data = array('code' => 'success', 'message' => 'Billed Hours Updated');
        //         echo json_encode($data);
        //         die;
        //     } else {
        //         ///credential not correct
        //         $data = array('code' => 'warning', 'message' => 'Here Some Errors');
        //         echo json_encode($data);
        //         die;
        //     }
        // }

        ///check billed hours
        // if (isset($billed_hours) && !empty($billed_hours)) {
        //     $rec = updateByWhere('projects', array('billed_hours' => $billed_hours), array('project_id' => $project_id));
        //     if ($rec) {
        //         ///Success
        //         $data = array('code' => 'success', 'message' => 'Billed Hours Updated');
        //         echo json_encode($data);
        //         die;
        //     } else {
        //         ///credential not correct
        //         $data = array('code' => 'warning', 'message' => 'Here Some Errors');
        //         echo json_encode($data);
        //         die;
        //     }
        // }


        ///check type
        if (isset($project_type) && !empty($project_type)) {
            $rec = updateByWhere('projects', array('project_type' => $project_type), array('project_id' => $project_id));
            if ($rec) {
                ///Success
                $data = array('code' => 'success', 'message' => 'Project Type Has Been Updated');
                echo json_encode($data);
                die;
            } else {
                ///credential not correct
                $data = array('code' => 'warning', 'message' => 'Here Some Errors');
                echo json_encode($data);
                die;
            }
        }

        ///completed_task_link 
        if (isset($completed_task_link) && !empty($completed_task_link)) {

            //check url validation 
            if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i", $completed_task_link)) {
                ///credential not correct
                $data = array('code' => 'warning', 'message' => 'Invalid URL!');
                echo json_encode($data);
                die;
            } else {
                $data_post['project_id'] = $project_id;
                $data_post['completed_task_link'] = $completed_task_link;
                $data_post['time'] = IntegerDate(date('Y-m-d h:i:s a'));
                $rec = getByWhere('projects_config', '*', array('project_id' => $project_id, 'completed_task_link !=' => 'No Links'));
                if ($rec) {
                    updateByWhere('projects_config', $data_post, array('project_id' => $project_id, 'completed_task_link !=' => 'No Links'));
                    ///Success
                    $data = array('code' => 'success', 'message' => 'Link Has Been Updated');
                    echo json_encode($data);
                    die;
                } else {

                    addNew('projects_config', $data_post);
                    ///Success
                    $data = array('code' => 'success', 'message' => 'Link Has Been Added');
                    echo json_encode($data);
                    die;
                }
            }
        }


        ///completed_task_link 
        if (isset($estimation_link) && !empty($estimation_link)) {

            if (!preg_match("/\b(?:(?:https?|ftp):\/\/|www\.)[-a-z0-9+&@#\/%?=~_|!:,.;]*[-a-z0-9+&@#\/%=~_|]/i", $estimation_link)) {
                ///credential not correct
                $data = array('code' => 'warning', 'message' => 'Invalid URL!');
                echo json_encode($data);
                die;
            } else {

                $data_post['project_id'] = $project_id;
                $data_post['estimation_link'] = $estimation_link;
                $data_post['time'] = IntegerDate(date('Y-m-d h:i:s a'));
                $rec = getByWhere('projects_config', '*', array('project_id' => $project_id, 'estimation_link !=' => 'No Links'));
                if ($rec) {
                    updateByWhere('projects_config', $data_post, array('project_id' => $project_id, 'estimation_link !=' => 'No Links'));
                    ///Success
                    $data = array('code' => 'success', 'message' => 'Link Has Been Updated');
                    echo json_encode($data);
                    die;
                } else {

                    addNew('projects_config', $data_post);
                    ///Success
                    $data = array('code' => 'success', 'message' => 'Link Has Been Added');
                    echo json_encode($data);
                    die;
                }
            }
        }

        ///manager_name
        if (isset($manager_id) && !empty($manager_id)) {


            $table = 'projects';
            $where = array('project_id' => $project_id);
            $PostData['project_id'] = $project_id;
            $PostData['manager_id'] = $manager_id;

            ///findData
            $findData = getByWhere($table, '*', $where);
            if ($findData) {
                $check = updateByWhere($table, $PostData, $where);
                if ($check) {
                    $this->PostIdToManagerTable($manager_id);
                    ///Success
                    $data = array('code' => 'success', 'message' => 'Record Has Been Updated');
                    echo json_encode($data);
                    die;
                }
            } else {
                $check = addNew($table, $PostData);
                if ($check) {
                    $this->PostIdToManagerTable($manager_id);
                    ///Success
                    $data = array('code' => 'success', 'message' => 'Record Has Been Added');
                    echo json_encode($data);
                    die;
                }
            }
        }
    }


    ///ByEmployeeSettings
    public function ByEmployeeSettings()
    {
        extract($_POST);

        ///notifi_email
        if (isset($notifi_email) && !empty($notifi_email)) {

            $where = array('emplId' => $emplId, 'project_id' => $project_id, 'ssm_id' => $ssm_id);
            $PostData = array(
                'emplId' => $emplId,
                'project_id' => $project_id,
                'notifi_email' => $notifi_email,
                'ssm_id' => $ssm_id
            );

            $table = 'week_limit';
            $findData = getByWhere($table, '*', $where);
            if ($findData) {
                updateByWhere('week_limit', $PostData, $where);
                ///Success
                $data = array('code' => 'success', 'message' => 'Record Has Been Updated');
                echo json_encode($data);
                die;
            } else {
                ///credential not correct
                $data = array('code' => 'warning', 'message' => 'Record Not Found!');
                echo json_encode($data);
                die;
            }
        }

        ///week_limit
        if (isset($week_limit) && !empty($week_limit)) {
            $table = 'week_limit';
            $where = array('emplId' => $emplId, 'project_id' => $project_id, 'ssm_id' => $ssm_id);
            $PostData = array(
                'emplId' => $emplId,
                'project_id' => $project_id,
                'total_limit' => $week_limit,
                'ssm_id' => $ssm_id
            );
            $findData = getByWhere($table, '*', $where);

            if ($findData) {
                updateByWhere($table, $PostData, $where);
                ///Success
                $data = array('code' => 'success', 'message' => 'Record Has Been Updated');
                echo json_encode($data);
                die;
            } else {
                ///credential not correct
                $data = array('code' => 'warning', 'message' => 'Record Not Found!');
                echo json_encode($data);
                die;
            }
        }
    }


    ////searchRecordsByProjectManager
    public function searchRecordsByProjectManager()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);
            if (isset($manager_id) && !empty($manager_id)) {
                $table = 'projects';
                $findData = getByWhere($table, '*', array('manager_id' => $manager_id));
                if (isset($findData) && !empty($findData)) {

                    //clear search project types 
                    updateByWhere('projects', array('project_type_status' => 'inactive'), array('project_type' => 'active'));

                    ///clear manager search 
                    updateByWhere('projects', array('pm_status' => 'inactive'), array('manager_id !=' => $manager_id));

                    ///new manager search
                    updateByWhere('projects', array('pm_status' => 'active'), array('manager_id' => $manager_id));


                    $data = array('code' => 'success');
                    echo json_encode($data);
                    die;
                } else {

                    ///credential not correct
                    $data = array('code' => 'warning', 'message' => 'Against This PM No Record!');
                    echo json_encode($data);
                    die;
                }
            }
        }
    }


    ////SearchProjectByTypes
    public function SearchProjectByTypes()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);
            if (isset($type) && !empty($type)) {
                $table = 'projects';
                $findData = getByWhere($table, '*', array('project_type' => $type));

                if (isset($findData) && !empty($findData)) {
                    ///Clear search of project manager
                    updateByWhere('projects', array('pm_status' => 'inactive'), array('pm_status' => 'active'));

                    //clear search previous project types 
                    updateByWhere('projects', array('project_type_status' => 'inactive'), array('project_type !=' => $type));

                    ///search new project types 
                    updateByWhere('projects', array('project_type_status' => 'active'), array('project_type' => $type));
                    $data = array('code' => 'success');
                    echo json_encode($data);
                    die;
                } else {
                    ///credential not correct
                    $data = array('code' => 'warning', 'message' => 'Against This Type No Record!');
                    echo json_encode($data);
                    die;
                }
            }
        }
    }

    ////getEmployeeByToken
    public function getEmployeeByToken()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);

            ////get employee against this ssm tokens 
            $tableSelect = "tb1.*, tb2.*";
            $tableInfo = "employee tb1, ssm_tokens tb2-tb2.ssm_id=tb1.ssm_id-left";
            $employee = getByWhere($tableInfo, $tableSelect, array('tb1.ssm_id' => $ssm_id));


            if (isset($employee) && !empty($employee)) {
                ///Success
                $data = array('code' => 'success', 'data' => $employee);
                echo json_encode($data);
                die;
            }

            ///credential not correct
            $data = array('code' => 'warning', 'message' => 'Record Not Found!');
            echo json_encode($data);
            die;
        }
    }


    ////PostBilledCheck
    public function PostBilledCheck()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);

            if (isset($_POST) && !empty($_POST)) {
                ///set Table
                $currentmonth = date('M');
                if ($month_name == $currentmonth) {
                    $table = 'projects';
                } else {
                    $table = 'projects_year_records';
                }

                ///set where
                $where = array('project_id' => $project_id, 'month_name' => $month_name);

                ///post Data
                $postData['project_id'] = $project_id;
                $postData['month_name'] = $month_name;
                $postData['billed'] = $billed;
                $findData = getByWhere($table, '*', $where);


                if ($billed == 'true') {
                    $postData['billed_hours'] = $findData[0]->total_work;
                }

                if ($findData) {
                    updateByWhere($table, $postData, $where);
                    ///Success
                    $data = array('code' => 'success');
                    echo json_encode($data);
                    die;
                }
            }
        }
    }


    ////PostIdToManagerTable
    public function PostIdToManagerTable($manager_id)
    {
        ///start
        $ssm_id = $_SESSION['ssm_id'];
        $findData = getByWhere('managers', '*', array('manager_id' => $manager_id, 'ssm_id' => $ssm_id));

        ///count projects
        $count = getByWhere('projects', '*', array('manager_id' => $manager_id));
        if (isset($count) && !empty($count)) {
            $count = count($count);
        } else {
            $count = 0;
        }


        ///Post data to manager Table 
        $postData['manager_id'] = $manager_id;
        $postData['ssm_id'] = $ssm_id;
        $postData['count'] = $count;

        if (empty($findData)) {
            addNew('managers', $postData);
        } else {
            updateByWhere('managers', $postData, array('manager_id' => $manager_id));
        }


        ////update other counts 
        $findAllRecords = getByWhere('managers', '*', array('ssm_id' => $ssm_id));
        if (isset($findAllRecords) && !empty($findAllRecords)) {
            for ($i = 0; $i < count($findAllRecords); $i++) {

                ///count projects
                $count = getByWhere('projects', '*', array('manager_id' => $findAllRecords[$i]->manager_id));

                if (isset($count) && !empty($count)) {
                    $count = count($count);
                } else {
                    $count = 0;
                }

                updateByWhere('managers', array('count' => $count), array('manager_id' => $findAllRecords[$i]->manager_id));
            }
        }

        ///close

    }

    ////PostProjectNotes
    public function PostProjectNotes()
    {
        extract($_POST);

        $PostData = array();
        $where = array();

        ///check notes 
        if (isset($notes) && !empty($notes)) {
            $PostData['employee_id'] = $emplId;
            $PostData['project_id'] = $project_id;
            $PostData['ssm_id'] = $ssm_id;
            $PostData['notes'] = $notes;
            $PostData['time'] = IntegerDate(date('Y-m-d h:i:sa'));

            $where = array('project_id' => $project_id, 'employee_id' => $emplId);
            $table = 'notes';

            $findData = getByWhere($table, '*', $where);

            if ($findData) {
                updateByWhere($table, $PostData, $where);
                ///Success
                $data = array('code' => 'success', 'message' => 'Notes Has Been Updated');
                echo json_encode($data);
                die;
            } else {
                addNew($table, $PostData);
                ///Success
                $data = array('code' => 'success', 'message' => 'Notes Has Been Added');
                echo json_encode($data);
                die;
            }
        }
    }
}
