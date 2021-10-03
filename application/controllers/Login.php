<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Login extends CI_Controller
{

    ///Load Helper
    function __construct()
    {
        parent::__construct();
        ///load Helper
        $this->load->helper('functions_helper');
        $this->load->helper('queries_helper');
    }

    ///Login Page View
    public function index()
    {
      
        if ($this->input->is_ajax_request()) {
            ///check validation 
            $this->form_validation->set_rules('username', 'Username', 'required');
            $this->form_validation->set_rules('password', 'Password', 'required');

            //run validation 
            if ($this->form_validation->run()) {
                extract($_POST);
                // $password = password_hash($password,PASSWORD_DEFAULT);  
                // addNew('login',array('username'=>$username,'password'=>$password));
                // die;
                $data['username'] = $username;
                $data['password'] = $password;
                $check = getByWhere('login', '*', array('username' => $username));
                if ($check) {
                    $hash = $check[0]->password;
                    if (password_verify($password, $hash)) {
                        ///set session
                        $newdata = array(
                            'user_id'  => $check[0]->user_id,
                            'username'     => $check[0]->username,
                            'logged_in' => TRUE
                        );
                        $this->session->set_userdata($newdata);

                        $this->clearProjectsFilter();
                        ///Success
                        $data = array('code' => 'success', 'message' => 'Logged in');
                        echo json_encode($data);
                        die;
                    } else {
                        ///credential not correct
                        $data = array('code' => 'warning', 'message' => 'Sorry Password Not Match');
                        echo json_encode($data);
                        die;
                    }
                } else {
                    ///credential not correct
                    $data = array('code' => 'warning', 'message' => 'Record Not Found!');
                    echo json_encode($data);
                    die;
                }
            } else {
                ///validation errors
                $error_array = array();
                foreach ($_POST as $key => $value) {
                    if (form_error($key)) {
                        $error_array[] = array($key, form_error($key, null, null));
                    }
                }
                $data = array('code' => 'error', 'message' => $error_array);
                echo json_encode($data);
                die;
            }
        } else {
            $title = 'Login Page';              
            $data = array();
            $page = 'login';
            $this->load->view($page, $data, $title);
        }

    }


    ////clearProjectsFilter
    public function clearProjectsFilter()
    {
        $findData = getByWhere('ssm_tokens','*', array('ssm_status' => 'active'));
        $_SESSION['ssm_id']=$findData[0]->ssm_id;

        ///clear pm_manager search
        updateByWhere('projects', array('pm_status' => 'active'), array('manager_id >=' => 0));
        $_SESSION['pm_search'] = 'All';
        updateByWhere('projects', array('project_type_status' => 'active'), array('project_type' => 'DNE')); 
        updateByWhere('projects', array('project_type_status' => 'active'), array('project_type' => 'Fixed'));

        $_SESSION['date_type'] = 'month-wise';
        $_SESSION['type_search'] = 'All';
        $_SESSION['history'] = 'inactive';
        $_SESSION['date'] = date('m/d/Y');
        $_SESSION['month'] = date('M');
        $_SESSION['year'] = date('Y');
    }
}
