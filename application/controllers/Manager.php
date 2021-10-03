<?php defined('BASEPATH') or exit('No direct script access allowed');

class Manager extends CI_Controller
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


    ///index function 
    public function index()
    {
        if ($this->input->is_ajax_request()) {
            extract($_POST);
            if (isset($ssm_id) && !empty($ssm_id)) {
                ///ssm tokens Update
                updateByWhere('ssm_tokens', array('ssm_status' => 'inactive'), array('ssm_id !=' => $ssm_id));
                updateByWhere('ssm_tokens', array('ssm_status' => 'active'), array('ssm_id' => $ssm_id));
                $_SESSION['ssm_id'] = $ssm_id;
                ///Success
                $data = array('code' => 'success', 'message' => 'Success');
                echo json_encode($data);
                die;
            } else {
                ///credential not correct
                $data = array('code' => 'warning', 'message' => 'Something Wrong');
                echo json_encode($data);
                die;
            }
        } else {

            $title = 'Managers';
            $page = 'admin/managers';
            $data=array();

            ///Get All Mangers  
            $tables = "tb1.*, tb2.company_email,tb2.ssm_status";
            $tablesInfo = "managers tb1, ssm_tokens tb2-tb2.ssm_id=tb1.ssm_id-left";
            $findAllRecords = getByWhere($tablesInfo, $tables, array('tb2.ssm_status' => 'active'));
            if (isset($findAllRecords) && !empty($findAllRecords)) {
                $data['managers_list'] = $findAllRecords;
            }


            AdminView($page, $data, $title);
        }
        
    }


    ////Single Manager Detail
    public function SingleManagerDetail()
    {
        ///post
        if ($this->input->is_ajax_request()) {
        } else {

            ///get
            $id = $this->uri->segment(2);
            $manager_id =  base64_decode(urldecode($id));
            $data=array();

            ///Manager Record
            $findManagerRecord = getByWhere('managers', '*', array('manager_id' => $manager_id));
            if (isset($findManagerRecord) &&  !empty($findManagerRecord)) {
                $data['managerRecord'] = $findManagerRecord;
            }


            ///Manager Projects
            $findManagerProjects=getByWhere('projects','*',array('manager_id'=>$manager_id));
            if(isset($findManagerProjects) && !empty($findManagerProjects))
            {
                $data['managerProjects']=$findManagerProjects;
            }


            $title = 'Single Manager Detail';
            $page = 'admin/manager';
            AdminView($page, $data, $title);
        }
    }


    ///ManagerSettings
    public function ManagerSettings()
    {
        extract($_POST);

        ///for email 
        if (isset($email) && !empty($email)) {
            $postData['email']=$email;
            $postData['manager_id']=$manager_id;

            ///find Data
            $findManagerRecord=getByWhere('managers','*',array('manager_id'=>$manager_id));
            if($findManagerRecord)
            {
                updateByWhere('managers',$postData,array('manager_id'=>$manager_id));
                ///Success
                $data=array('code'=>'success','message'=>'Record Updated');
                echo json_encode($data);
                die;

            }


        } else {
            ///credential not correct
            $data = array('code' => 'warning', 'message' => 'Something Wrong!');
            echo json_encode($data);
            die;
        }
    }


    
}
