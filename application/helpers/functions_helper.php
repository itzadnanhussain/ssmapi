<?php
defined('BASEPATH') or exit('No direct script access allowed');

/////Helper Function For Login Views//////
if (!function_exists('AdminView')) {
    function AdminView($page, $data = array(), $title = null)
    {
        $thiz = &get_instance();
        $header = array();
        $header['title'] = $title;

        ///getCronExcutionTime
        $findData = getByWhere('cronjob');
        if ($findData) {
            $header['time'] = $findData[0]->execute_time;
        }
        $thiz->load->view('templates/ad_header', $header);
        $thiz->load->view($page, $data);
        $thiz->load->view('templates/ad_footer');
        //$thiz->load->view('templates/ad_footer',array('ad_scriptfile'=>basename($page))); 
    }
}

///GetCommonData
if (!function_exists('GetCommonData')) {
    function GetCommonData($clientId = null)
    {
        $curl = curl_init();
        curl_setopt_array($curl, array(
            CURLOPT_URL => 'https://screenshotmonitor.com/api/v2/GetCommonData',
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_HTTPHEADER => array(
                'X-SSM-Token: ' . $clientId . '',
                'Content-Type: application/json; charset=utf-8',
                'Accept: application/json; charset=utf-8',
                'Content-Length: 0',
            ),
        ));

        $response = curl_exec($curl);
        curl_close($curl);
        $data = json_decode($response);
        return $data;
    }
}

///GetActivities
if (!function_exists('GetActivities')) {
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

///SetConfigValue
if (!function_exists('SetConfigValue')) {
    function SetConfigValue($empId, $key, $value)
    {
        $url = 'https://screenshotmonitor.com/api/v2/SetConfigValue';
        $data = array(
            "employmentId" => $empId,
            "key" => $key,
            "value" => $value

        );
        $postdata = json_encode($data);
        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postdata);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, 1);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/json', 'X-SSM-Token: 52033l664d7349b4d71e273adbd19e2197745f'));
        curl_exec($ch);
        $http_status = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        curl_close($ch);
        if ($http_status == 200) {
            return 1;
        } else {
            return 0;
        }
    }
}

///GetIntegerDate
if (!function_exists('IntegerDate')) {
    function IntegerDate($date)
    {
        return strtotime($date);
    }
}

///TotalHours
if (!function_exists('TotalHours')) {
    function TotalHours($date1, $date2)
    {
        //  echo date('Y-m-d h:i:sa','1609481640');
        // die;  
        //  echo round(abs(1609866360 - 1609863540) / 3600, 2) . " minute";
        //  die;
        return round(abs($date2 - $date1) / 3600, 2);
        //die;


    }
}


///ProjectName
if (!function_exists('ProjectName')) {
    function ProjectName($id)
    {
        $data = getByWhere('projects', 'name', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->name;
        } else {
            return 'No Name';
        }
    }
}


///EmployeeName
if (!function_exists('EmployeeName')) {
    function EmployeeName($id)
    {
        $data = getByWhere('employee', 'name', array('emplId' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->name;
        } else {
            return 'No Name';
        }
    }
}

///ProjectTotalCoveredWeekHours
if (!function_exists('ProjectTotalCoveredWeekHours')) {
    function ProjectTotalCoveredWeekHours($projectI_id)
    {
        $data = getByWhere('week_limit', '*', array('project_id' => $projectI_id));
        if (isset($data) && !empty($data)) {
            $count = count($data);
            $total_hours = 0;
            for ($i = 0; $i < $count; $i++) {
                $total_hours = $total_hours + $data[$i]->total_work_hours;
            }
            return $total_hours;
        } else {
            return '0';
        }
    }
}


///ProjectTotalCoveredMonthHours
if (!function_exists('ProjectTotalCoveredMonthHours')) {
    function ProjectTotalCoveredMonthHours($projectI_id)
    {
        $data = getByWhere('month_limit', '*', array('project_id' => $projectI_id));
        //$data = getByWhere('month_limit', '*', array('project_id' => '065e9587-61c5-750c-4ab1-e6de534971a3'));

        if (isset($data) && !empty($data)) {
            $count = count($data);
            $total_hours = 0;
            for ($i = 0; $i < $count; $i++) {
                $total_hours = $total_hours + $data[$i]->total_work_hours;
            }
            return $total_hours;
        } else {
            return '0';
        }
    }
}


///ProjectTotalCoveredHours
if (!function_exists('ProjectTotalCoveredHours')) {
    function ProjectTotalCoveredHours($projectI_id)
    {
        $data = getByWhere('project_total_work', '*', array('project_id' => $projectI_id));
        if (isset($data) && !empty($data)) {
            $count = count($data);
            $total_hours = 0;
            for ($i = 0; $i < $count; $i++) {
                $total_hours = $total_hours + $data[$i]->total_work_hours;
            }
            return $total_hours;
        } else {
            return '0';
        }
    }
}

///ProjectTotalCoveredHours
if (!function_exists('ProjectCustomCoveredHours')) {
    function ProjectCustomCoveredHours($projectI_id)
    {
        $data = getByWhere('custom-range', '*', array('project_id' => $projectI_id));
        if (isset($data) && !empty($data)) {
            $count = count($data);
            $total_hours = 0;
            for ($i = 0; $i < $count; $i++) {
                $total_hours = $total_hours + $data[$i]->total_work;
            }
            return $total_hours;
        } else {
            return '0';
        }
    }
}


///WeekTotalLimit
if (!function_exists('WeekTotalLimit')) {
    function WeekTotalLimit($projectId, $emplId)
    {
        // $thiz=&get_instance();
        $data = getByWhere('week_limit', 'total_limit', array('project_id' => $projectId, 'emplId' => $emplId));
        // echo $thiz->db->last_query();
        // die;
        if (isset($data) && !empty($data) && $data[0]->total_limit != NULL) {
            return $data[0]->total_limit;
        } else {
            return "0";
        }
    }
}


///WeekTotalLimit
if (!function_exists('WeekTotalWorkingTime')) {
    function WeekTotalWorkingTime($projectId, $emplId)
    {
        // $thiz=&get_instance();
        $data = getByWhere('week_limit', 'total_work_hours', array('project_id' => $projectId, 'emplId' => $emplId));
        // echo $thiz->db->last_query();
        // die;
        if (isset($data) && !empty($data) && $data[0]->total_work_hours != NULL) {
            return $data[0]->total_work_hours;
        } else {
            return "0";
        }
    }
}

///WeekTotalLimit
if (!function_exists('WorkStatusFinder')) {
    function WorkStatusFinder($projectId, $emplId)
    {
        $data = getByWhere('week_limit', '*', array('project_id' => $projectId, 'emplId' => $emplId));

        // $thiz=&get_instance();
        // echo $thiz->db->last_query();
        // die;

        if (isset($data) && !empty($data)) {
            $limit = 0;
            $work = 0;

            $limit = $data[0]->total_limit;
            $work = $data[0]->total_work_hours;
            if ($limit > 0 && $work > 0) {
                $result = round(($work / $limit) * 100);
                if ($result > 0 && $result <= 25) {
                    $html = '<div class="badge badge-success badge-pill">' . $result . '%</div>';
                    return $html;
                } else if ($result > 25 && $result <= 50) {

                    $html = '<div class="badge badge-primary badge-pill">' . $result . '%</div>';
                    return $html;
                } else if ($result > 50 && $result <= 75) {
                    $html = '<div class="badge badge-warning badge-pill">' . $result . '%</div>';
                    return $html;
                } else if ($result > 75 && $result <= 100) {
                    $html = '<div class="badge badge-orange badge-pill">' . $result . '%</div>';
                    return $html;
                } else {
                    $html = '<div class="badge badge-danger badge-pill">' . $result . '%</div>';
                    return $html;
                }
            } else {
                $html = '<div class="badge badge-gray badge-pill">0%</div>';
                return $html;
            }
        } else {

            $html = '<div class="badge badge-gray badge-pill">0%</div>';
            return $html;
        }
    }
}

///weeklyProjectStatus
if (!function_exists('weeklyProjectStatus')) {
    function weeklyProjectStatus($projectId)
    {
        $data = getByWhere('projects', '*', array('project_id' => $projectId));
        // $thiz=&get_instance();
        // echo $thiz->db->last_query();
        // die;
        if (isset($data) && !empty($data)) {
            if ($data[0]->week_flag25 == "active") {
                $html = '<span class="badge badge-danger badge-pill">25%</span>';
                return $html;
            } else if ($data[0]->week_flag50 == "active") {

                $html = '<span class="badge badge-warning badge-pill">50%</span>';
                return $html;
            } else if ($data[0]->week_flag75 == "active") {
                $html = '<span class="badge badge-info badge-pill">75%</span>';
                return $html;
            } else if ($data[0]->week_flag100 == "active") {
                $html = '<span class="badge badge-success badge-pill">100%</span>';
                return $html;
            } else {
                $html = '<span class="badge badge-danger badge-pill">0%</span>';
                return $html;
            }
        } else {
            return 'No Data';
        }
    }
}

///WeekTotalLimit
if (!function_exists('GetNotifiEmail')) {
    function GetNotifiEmail($projectId, $emplId)
    {

        $data = getByWhere('week_limit', 'notifi_email', array('project_id' => $projectId, 'emplId' => $emplId));
        if (isset($data) && !empty($data)) {
            if ($data[0]->notifi_email == NULL) {

                return  $_SESSION['company_email'];
            } else {
                return $data[0]->notifi_email;
            }
        } else {
            return 'Set Email';
        }
    }
}

///CroneJobes
if (!function_exists('CronJob')) {
    ///CroneJobes
    function CronJob()
    {
        set_time_limit(500);

        ///Run cronjob to all client  
        $dataTable = getByWhere('ssm_tokens');

        if (isset($dataTable) && !empty($dataTable)) {
            for ($k = 0; $k < count($dataTable); $k++) {
                if (isset($dataTable[$k]->ssm_id) && !empty($dataTable[$k]->ssm_id)) {
                    $ssm_id = $dataTable[$k]->ssm_id;

                    ///Get All Records According To SSM ID
                    $records = GetCommonData($dataTable[$k]->ssm_id);
                    echo '<pre>';
                    print_r($records);
                    echo '</pre>';
                    die;


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

                        /// Step One :Get All Clients Accordcing To Company And also Database(clients-tb) update
                        $clients = $records->companies[0]->clients;


                        if (isset($clients) && !empty($clients)) {
                            for ($i = 0; $i < count($clients); $i++) {
                                $client_data = array();
                                $client_data['clientId'] = $clients[$i]->clientId;
                                $client_data['clientName'] = $clients[$i]->clientName;
                                $client_data['companyId'] = $clients[$i]->companyId;
                                $client_data['ssm_id'] = $ssm_id;
                                $get_client = getByWhere('clients', '*', array('clientId' => $clients[$i]->clientId));


                                // $thiz=&get_instance();
                                // echo $thiz->db->last_query();
                                // die;


                                if (empty($get_client)) {
                                    addNew('clients', $client_data);
                                } else {
                                    // echo '<pre>';
                                    // print_r($client_data);
                                    // echo '</pre>';
                                    // die;
                                    updateByWhere('clients', $client_data, array('clientId' => $clients[$i]->clientId));
                                }
                            }
                        }

                        /// Step Two :Get All Employees and Store into Database(employee-tb)
                        $empl = $records->companies[0]->employments;

                        if (isset($empl) && !empty($empl)) {
                            $count = count($empl);

                            if (isset($count)) {
                                for ($i = 0; $i < $count; $i++) {
                                    $check = getByWhere('employee', '*', array('ssm_id' => $ssm_id, 'emplId' => $empl[$i]->id));

                                    if ($check) {

                                        ///record exist then update
                                        $data = array();
                                        $data = array(
                                            'ssm_id' => $ssm_id,
                                            'emplId' => $empl[$i]->id,
                                            'name' => $empl[$i]->name,
                                            'email' => $empl[$i]->email,
                                        );
                                        updateByWhere('employee', $data, array('ssm_id' => $ssm_id, 'emplId' => $empl[$i]->id));

                                        ///Weekly working hourse update
                                        $weekly_from_time = $check[0]->weekly_from_time;
                                        $to = IntegerDate(date("Y-m-d h:i:sa"));
                                        $data = array();
                                        $data = GetActivities($empl[$i]->id,  $weekly_from_time, $to, $ssm_id);
                                        if (isset($data) && !empty($data)) {

                                            $innercount = count($data);
                                            $new_rec = array();
                                            for ($j = 0; $j < $innercount; $j++) {

                                                $from = $data[$j]->from;
                                                $to = $data[$j]->to;
                                                $worktime = TotalHours($from, $to);

                                                // echo $from . "<br>";
                                                // echo $to . "<br>";
                                                // echo $data[0]->note . "<br>";
                                                // echo $worktime . "<br>";
                                                // die;



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
                                            $records_count = count($new_rec);
                                            if (isset($records_count) && !empty($records_count)) {
                                                foreach ($new_rec as $key => $value) {
                                                    $getData = getByWhere('week_limit', '*', array('emplId' => $data[0]->employmentId, 'project_id' => $key));
                                                    // $getData = getByWhere('week_limit', '*', array('emplId' => '103565', 'project_id' => $key));
                                                    // echo '<pre>';
                                                    // print_r($getData);
                                                    // echo '</pre>';
                                                    // die;
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
                                        // $monthly_from_time = $check[0]->monthly_from_time;
                                        $monthly_from_time = '1612159253';
                                        $to = IntegerDate(date("Y-m-d h:i:s a"));
                                        $data = array();

                                        $data = GetActivities($empl[$i]->id,  $monthly_from_time, $to, $ssm_id);

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

                                        ///new records enter 
                                        $data = array();
                                        $data = array(
                                            'ssm_id' => $ssm_id,
                                            'emplId' => $empl[$i]->id,
                                            'name' => $empl[$i]->name,
                                            'email' => $empl[$i]->email,

                                        );
                                        addNew('employee', $data);
                                    }
                                }
                            }
                        }


                        //// Step:3 Send Email According to Weekly Work Status
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


                        ///Step 4 Project Table Update 
                        $projects = $records->companies[0]->projects;
                        if (isset($projects) && (!empty($projects))) {
                            $count = count($projects);
                            for ($i = 0; $i < $count; $i++) {
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


                                    $check = getByWhere('projects', '*', array('project_id' => $projects[$i]->id, 'ssm_id' => $ssm_id));


                                    if (empty($check)) {
                                        addNew('projects', $data);
                                    } else {
                                        updateByWhere('projects', $data, array('project_id' => $projects[$i]->id, 'ssm_id' => $ssm_id));
                                    }

                                    ////send email notification according to project working hour status
                                    $where = array('project_id' => $projects[$i]->id);
                                    // $where = array('project_id' =>  '065e9587-61c5-750c-4ab1-e6de534971a3');
                                    $projectData = array();
                                    $projectData = getByWhere('projects', '*', $where);

                                    if (isset($projectData) && (!empty($projectData))) {

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
                    } else {
                        ///Send Email IF Api Not Respond 
                        ApiSendEmail($AdminEmail);
                    }
                }
            }

            return 1;
        }
    }
}


///Email 1 
///sendEmailForEmployeeWeeklyProjectStatus
if (!function_exists('sendEmailForEmployeeWeeklyProjectStatus')) {
    ///sendEmail
    function sendEmailForEmployeeWeeklyProjectStatus($mailData)
    {

        // [id] => 103565
        // [name] => Parth
        // [email] => parth@foundersapproach.com
        // [project_id] => 57a7cdd7-4b7e-4c74-c842-fbda49cbcf54
        // [project_name] => Knitrino Help
        // [workdone] => 25%
        // [admin_email] => info@foundersapproach.com

        // Load the email library
        $thiz = &get_instance();
        $thiz->load->library('email');

        // Mail config
        $to = $mailData['admin_email'];
        $from = 'no-reply@screenshotmonitor.com';
        $fromName = $mailData['name'];
        $mailSubject = $mailData['workdone'] . ' of hours completed by ' . $mailData['name'] . ' in this week';

        // Mail content
        $mailContent = '
           <h2>Project Working Weekly Report Of Single Employee</h2>
           <p><b>Employee ID: </b>' . $mailData['id'] . '</p>
           <p><b>Employee Name: </b>' . $mailData['name'] . '</p>
           <p><b>Employee Email: </b>' . $mailData['email'] . '</p> 
           <p><b>Project Name: </b>' . $mailData['project_name'] . '</p> 
           <p><b>Message: </b>' . $mailData['workdone'] . ' Work Completed in this week' . '</p>';

        $config['mailtype'] = 'html';
        $thiz->email->initialize($config);
        $thiz->email->to($to, 'muhammadshaoor1707276@gmail.com');
        $thiz->email->from($from, $fromName);
        $thiz->email->subject($mailSubject);
        $thiz->email->message($mailContent);

        // Send email & return status
        return $thiz->email->send() ? true : false;
    }
}


///Email 2 
///sendEmailForProjectReport
if (!function_exists('sendEmailForProjectReport')) {
    ///sendEmail
    function sendEmailForProjectReport($mailData)
    {


        // [project_id] => 5be088c4-b30c-ab9b-29ae-df3c3b4c7947
        // [name] => HereStoryRN
        // [workdone] => 25%
        // [admin_email] => info@foundersapproach.com
        // [email] => no-reply@screenshotmonitor.com


        // Load the email library
        $thiz = &get_instance();
        $thiz->load->library('email');

        //    $recipients = Array('user1@gmail.com','user2@gmail.com''user3@gmail.com'); 
        //  this->email->to(implode(', ', $recipients));

        //Mail config
        $to = $mailData['admin_email'];
        // $to = 'muhammadshaoor1707276@gmail.com';
        $from = 'no-reply@screenshotmonitor.com';
        $fromName = $mailData['name'];
        $mailSubject = $mailData['work'] . ' of ' . $mailData['limit'] . ' hours completed';

        // Mail content
        $mailContent = '
           <h2>Works Report </h2>  
           <p><b>Project Name: </b>' . $mailData['name'] . '</p> 
           <p><b>Monthly Limit : </b>' . $mailData['limit'] . '</p> 
           <p><b>Total Hours Worked : </b>' . $mailData['work'] . '</p> 
           <p><b>Message: </b>' . $mailData['workdone'] . ' Work Completed in this Month' . '</p>';

        $config['mailtype'] = 'html';
        $thiz->email->initialize($config);
        $thiz->email->to($to);
        $thiz->email->from($from, $fromName);
        $thiz->email->subject($mailSubject);
        $thiz->email->message($mailContent);

        // Send email & return status
        return $thiz->email->send() ? true : false;
    }
}



///Email 3
///sendEmailForClientReport
if (!function_exists('sendEmailForClientReport')) {
    ///sendEmail
    function sendEmailForClientReport($mailData, $recipients, $companymail)
    {

        // Load the email library
        $thiz = &get_instance();
        $thiz->load->library('email');
        $from = $companymail;
        $fromName = $mailData['name'];
        $mailSubject = $mailData['workdone'] . 'of hours - ' . $mailData['name'];

        // Mail content
        $mailContent = '
           <h2>Client Monthly Project Report</h2>
           <p><b>Report: </b>' . $mailData['status'] . '</p> 
           <p><b>Client ID: </b>' . $mailData['client_id'] . '</p> 
           <p><b>Client Name: </b>' . $mailData['name'] . '</p> 
           <p><b>Message: </b>' . $mailData['workdone'] . ' Work Completed in this month' . '</p>';

        $config['mailtype'] = 'html';
        $thiz->email->initialize($config);
        $thiz->email->to($recipients);
        $thiz->email->from($from, $fromName);
        $thiz->email->subject($mailSubject);
        $thiz->email->message($mailContent);

        // Send email & return status
        return $thiz->email->send() ? true : false;
    }
}


///Function Modified 
///ApiSendEmail Mail For Not Responding Api 
if (!function_exists('ApiSendEmail')) {

    ///sendEmail
    function ApiSendEmail($AdminEmail)
    {
        // Load the email library
        $thiz = &get_instance();
        $thiz->load->library('email');

        // Mail config
        $to = $AdminEmail;
        $from = 'no-reply@screenshotmonitor.com';
        $fromName = 'Screenshot Monitor';
        $mailSubject = 'Screenshot API Not Respond Currently';

        // Mail content
        $mailContent = '
           <h4>Inform You That:</h4>  
           <p><b>Message: </b> Screenshort Monitor API Not Working... </p>';

        $config['mailtype'] = 'html';
        $thiz->email->initialize($config);
        $thiz->email->to($to);
        $thiz->email->from($from, $fromName);
        $thiz->email->subject($mailSubject);
        $thiz->email->message($mailContent);

        // Send email & return status
        return $thiz->email->send() ? true : false;
    }
}


///array push 
if (!function_exists('array_push_assoc')) {
    function array_push_assoc($array, $key, $value)
    {
        $array[$key] = $value;
        return $array;
    }
}

///sendNotifyEmail
if (!function_exists('sendNotifyEmail')) {
    function sendNotifyEmail()
    {
        // Load the email library
        $thiz = &get_instance();
        $thiz->load->library('email');

        // Mail config
        $to = 'no-reply@screenshotmonitor.com';
        $from = 'Screenshot@project.com';
        $fromName = 'Cron Job';
        $mailSubject = 'Cronjob Run by Screenshot@project.com ';

        // Mail content
        $mailContent = '
            <h2>Cron Job Has Been Run Now</h2>';

        $config['mailtype'] = 'html';
        $thiz->email->initialize($config);
        $thiz->email->to($to, 'muhammadshaoor1707276@gmail.com');
        $thiz->email->from($from, $fromName);
        $thiz->email->subject($mailSubject);
        $thiz->email->message($mailContent);

        // Send email & return status
        return $thiz->email->send() ? true : false;
    }
}


///TestFn
if (!function_exists('TestFn')) {
    function TestFn()
    {
        $tr = '';
        $tr .= '<tr>' .
            '<td>Test</td>' .
            '</tr>';
        return $tr;
    }
}

///ClientTotalMonthWork
if (!function_exists('ClientTotalMonthWork')) {
    function ClientTotalMonthWork($id)
    {
        $rec = getByWhere('projects', '*', array('client_id' => $id));
        if (isset($rec) && !empty($rec)) {
            $total = 0;
            for ($i = 0; $i < count($rec); $i++) {
                $total = $total + $rec[$i]->total_work_by_month;
            }
            return $total;
        } else {
            return 0;
        }
    }
}


///ClientTotalCustomRangeWork
if (!function_exists('ClientTotalCustomRangeWork')) {
    function ClientTotalCustomRangeWork($id)
    {
        $rec = getByWhere('projects', '*', array('client_id' => $id));
        if (isset($rec) && !empty($rec)) {
            $total = 0;
            for ($i = 0; $i < count($rec); $i++) {
                $total = $total + $rec[$i]->custom_hours;
            }
            return $total;
        } else {
            return 0;
        }
    }
}


///ClientTotalMonthLimit
if (!function_exists('ClientTotalMonthLimit')) {
    function ClientTotalMonthLimit($id)
    {
        $rec = getByWhere('projects', '*', array('client_id' => $id));
        if (isset($rec) && !empty($rec)) {
            $total = 0;
            for ($i = 0; $i < count($rec); $i++) {
                $total = $total + $rec[$i]->month_limit;
            }
            return $total;
        } else {
            return 0;
        }
    }
}


///ClientTotalProgress
if (!function_exists('ClientTotalProgress')) {
    function ClientTotalProgress($id, $limit)
    {
        $rec = getByWhere('projects', '*', array('client_id' => $id));
        if (isset($rec) && !empty($rec)) {
            $total_limit = $limit;

            $total_work = 0;
            for ($i = 0; $i < count($rec); $i++) {
                // $total_limit=$total_limit+$rec[$i]->month_limit;
                $total_work = $total_work + $rec[$i]->total_work_by_month;
            }
            if ($total_work > 0 && $total_limit > 0) {
                $clientData = getByWhere('clients', '*', array('clientId' => $id));
                $notifi_email = $clientData[0]->client_email;
                $AdminEmail = 'observerdeep@gmail.com';
                $where = array('clientId' => $id);

                $res = ($total_work / $total_limit) * 100;
                $res = round($res);
                $localhost = 'http://localhost/screenshot/projects';
                $url = base_url(uri_string());

                if ($res > 0 && $res <= 25) {
                    $res = '<div class="badge badge-success badge-pill">' . $res . ' %</div>';
                    $status = $clientData[0]->flag25;
                    if ($status == 'inactive') {
                        $mailData = array();
                        $mailData = array(
                            'status' => 'Monthly Report By Clients',
                            'client_id' => $clientData[0]->clientId,
                            'name' => $clientData[0]->clientName,
                            'workdone' => "25%",

                        );
                        if ($localhost != $url) {
                            sendEmailForClientReport($mailData, $notifi_email, $AdminEmail);
                            updateByWhere('clients', array('flag25' => 'active', 'flag50' => 'inactive', 'flag75' => 'inactive', 'flag100' => 'inactive'), $where);
                        }
                    }
                } else if ($res > 25 && $res <= 50) {
                    $res = '<div class="badge badge-primary badge-pill">' . $res . ' %</div>';
                    $status = $clientData[0]->flag50;

                    if ($status == 'inactive') {
                        $mailData = array();
                        $mailData = array(
                            'status' => 'Monthly Report By Clients',
                            'client_id' => $clientData[0]->clientId,
                            'name' => $clientData[0]->clientName,
                            'workdone' => "50%",

                        );
                        if ($localhost != $url) {
                            sendEmailForClientReport($mailData, $notifi_email, $AdminEmail);
                            updateByWhere('clients', array('flag25' => 'inactive', 'flag50' => 'active', 'flag75' => 'inactive', 'flag100' => 'inactive'), $where);
                        }
                    }
                } else  if ($res > 50 && $res <= 75) {
                    $res = '<div class="badge badge-warning badge-pill">' . $res . ' %</div>';
                    $status = $clientData[0]->flag75;

                    if ($status == 'inactive') {
                        $mailData = array();
                        $mailData = array(
                            'status' => 'Monthly Report By Clients',
                            'client_id' => $clientData[0]->clientId,
                            'name' => $clientData[0]->clientName,
                            'workdone' => "75%",

                        );
                        if ($localhost != $url) {
                            sendEmailForClientReport($mailData, $notifi_email, $AdminEmail);
                            updateByWhere('clients', array('flag25' => 'inactive', 'flag50' => 'inactive', 'flag75' => 'active', 'flag100' => 'inactive'), $where);
                        }
                    }
                } else if ($res > 75 && $res <= 100) {
                    $res = '<div class="badge badge-orange badge-pill">' . $res . ' %</div>';
                    $status = $clientData[0]->flag100;
                    if ($status == 'inactive') {
                        $mailData = array();
                        $mailData = array(
                            'status' => 'Monthly Report By Clients',
                            'client_id' => $clientData[0]->clientId,
                            'name' => $clientData[0]->clientName,
                            'workdone' => "100%",

                        );
                        if ($localhost != $url) {
                            sendEmailForClientReport($mailData, $notifi_email, $AdminEmail);
                            updateByWhere('clients', array('flag25' => 'inactive', 'flag50' => 'inactive', 'flag75' => 'inactive', 'flag100' => 'active'), $where);
                        }
                    }
                } else if ($res > 100) {
                    $res = '<div class="badge badge-danger badge-pill"> ' . $res . ' %</div>';
                    $status = $clientData[0]->flag100;
                    if ($status == 'inactive') {
                        $mailData = array();
                        $mailData = array(
                            'status' => 'Monthly Report By Clients',
                            'client_id' => $clientData[0]->clientId,
                            'name' => $clientData[0]->clientName,
                            'workdone' => "100%",

                        );

                        if ($localhost != $url) {
                            sendEmailForClientReport($mailData, $notifi_email, $AdminEmail);
                            updateByWhere('clients', array('flag25' => 'inactive', 'flag50' => 'inactive', 'flag75' => 'inactive', 'flag100' => 'active'), $where);
                        }
                    }
                }
            } else {
                $res = '<div class="badge badge-gray badge-pill">0%</div>';
            }
            return $res;
        } else {
            return  0;
        }
    }
}


////DateFormat
if (!function_exists('DateFormat')) {
    function DateFormat($intDate)
    {
        $date = DateTime::createFromFormat('Y-m-d H:i:s', $intDate)
            ->format('m-d-Y h:i:s');
        return $date;
    }
}


////////////////////////////////////New Things///////////////////////
///ManagerId
if (!function_exists('ManagerId')) {
    function ManagerId($id)
    {
        $data = getByWhere('projects', 'manager_id', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->manager_id;
        } else {
            return 0;
        }
    }
}


///ProjectColor
if (!function_exists('ProjectColor')) {
    function ProjectColor($id)
    {
        $data = getByWhere('projects', 'color', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->color;
        } else {
            return 0;
        }
    }
}


///ProjectClientId
if (!function_exists('ProjectClientId')) {
    function ProjectClientId($id)
    {
        $data = getByWhere('projects', 'client_id', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->client_id;
        } else {
            return 0;
        }
    }
}


///ProjectEndDate
if (!function_exists('ProjectEndDate')) {
    function ProjectEndDate($id)
    {
        $data = getByWhere('projects', 'endDate', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->endDate;
        } else {
            return 0;
        }
    }
}


///ProjectEmails
if (!function_exists('ProjectEmails')) {
    function ProjectEmails($id)
    {
        $data = getByWhere('projects', 'emails', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->emails;
        } else {
            return 0;
        }
    }
}


///ProjectWeekLimit
if (!function_exists('ProjectWeekLimit')) {
    function ProjectWeekLimit($id)
    {
        $data = getByWhere('projects', 'week_limit', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->week_limit;
        } else {
            return 0;
        }
    }
}


///ProjectTotalWorkByWeek
if (!function_exists('ProjectTotalWorkByWeek')) {
    function ProjectTotalWorkByWeek($id)
    {
        $data = getByWhere('projects', 'total_work_by_week', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->total_work_by_week;
        } else {
            return 0;
        }
    }
}


///ProjectMonthFlag25
if (!function_exists('ProjectMonthFlag25')) {
    function ProjectMonthFlag25($id)
    {
        $data = getByWhere('projects', 'month_flag25', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->month_flag25;
        } else {
            return 0;
        }
    }
}


///ProjectMonthFlag50
if (!function_exists('ProjectMonthFlag50')) {
    function ProjectMonthFlag50($id)
    {
        $data = getByWhere('projects', 'month_flag50', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->month_flag50;
        } else {
            return 0;
        }
    }
}


///ProjectMonthFlag75
if (!function_exists('ProjectMonthFlag75')) {
    function ProjectMonthFlag75($id)
    {
        $data = getByWhere('projects', 'month_flag75', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->month_flag75;
        } else {
            return 0;
        }
    }
}


///ProjectMonthFlag
if (!function_exists('ProjectMonthFlag100')) {
    function ProjectMonthFlag100($id)
    {
        $data = getByWhere('projects', 'month_flag100', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->month_flag100;
        } else {
            return 0;
        }
    }
}


///ProjectMonthFlag125
if (!function_exists('ProjectMonthFlag125')) {
    function ProjectMonthFlag125($id)
    {
        $data = getByWhere('projects', 'month_flag125', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->month_flag125;
        } else {
            return 0;
        }
    }
}


///ProjectMonthFlag150
if (!function_exists('ProjectMonthFlag150')) {
    function ProjectMonthFlag150($id)
    {
        $data = getByWhere('projects', 'month_flag150', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->month_flag150;
        } else {
            return 0;
        }
    }
}


///ProjectStatus
if (!function_exists('ProjectStatus')) {
    function ProjectStatus($id)
    {
        $data = getByWhere('projects', 'status', array('project_id' => $id));
        if (isset($data) && !empty($data)) {
            return $data[0]->status;
        } else {
            return 0;
        }
    }
}


