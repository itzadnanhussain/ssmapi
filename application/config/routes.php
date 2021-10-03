<?php
defined('BASEPATH') OR exit('No direct script access allowed');

///admin dashboard
$route['dashboard']="Admin";
$route['logout']="Admin/Logout";
$route['employees']="Admin/GetAllEmployeeAcordingToClient";
$route['employee/(:any)']="Admin/SingleEmployeeData";
$route['projects']="Admin/GetAllProjectAcordingToClient";
$route['project_details/(:any)']="Admin/GetSingleProjectDetails";


///Partial Controller
$route['ApiSetConfigValue']="Partial/ApiSetConfigValue";
$route['PostProjectWeeklyLimit']="Partial/PostProjectWeeklyLimit";
$route['PostProjectMonthlyLimit']="Partial/PostProjectMonthlyLimit";
$route['GetDataByProjectID']="Partial/GetDataByProjectID";
$route['GetClientsBySSMToken']="Partial/GetClientsBySSMToken";
$route['ActiveClientId']="Partial/ActiveClientId";
$route['GetDataByClient']="Partial/GetDataByClient";
$route['SingleProjectSettings']="Partial/SingleProjectSettings";
$route['ByEmployeeSettings']="Partial/ByEmployeeSettings";
$route['searchRecordsByProjectManager']="Partial/searchRecordsByProjectManager";
$route['SearchProjectByTypes']="Partial/SearchProjectByTypes";
$route['getEmployeeByToken']="Partial/getEmployeeByToken";
$route['GetProjectYearRecord']="Partial/GetProjectYearRecord";
$route['PostProjectBilledHours']="Partial/PostProjectBilledHours";
$route['PostBilledCheck']="Partial/PostBilledCheck";
$route['PostProjectNotes']="Partial/PostProjectNotes";
$route['GetDataByProjectIDForEmployee']="Partial/GetDataByProjectIDForEmployee";

///cronjobes purpose  
$route['cronjob']="CronJob/GetCronJob"; 
$route['test']="CronJob/SetMonthFromTimeLimit"; 
$route['testweek']="CronJob/SetWeekFromTimeLimit"; 
$route['countactivitiestime']="Admin/CountWeeklyProjectActivitiesTime";
$route['weeklfromtime']="Admin/weeklFromTime";
$route['checkapiworks']='Admin/ApiTesting'; 



/////managers
$route['managers']='Manager';
$route['manager/(:any)']='Manager/SingleManagerDetail';
$route['ManagerSettings']='Manager/ManagerSettings';


///Debuggin Purpose
$route['processing']='CronJob/SetMonthFromTimeLimit';
 



$route['default_controller'] = 'login';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;
