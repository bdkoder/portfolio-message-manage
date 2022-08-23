<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of application
 *
 * @author Shahidul Islam
 */
class VisitorClass {
           protected $connection;
    
    public function __construct() {
        //        echo '<pre>';
//        print_r($data);
//        exit();
        
        $host_name = 'localhost';
        $user_name = 'root';
        $user_pass = '';
        $db_name = 'portfoliomessage';
                
        $this->connection = mysqli_connect($host_name, $user_name, $user_pass, $db_name);
//        $connection = mysqli_connect($host_name, $user_name, $user_pass, $db_name);
//        echo'<pre>';
//        print_r($connecttion);
//        exit();
//        if (!$connection){
        if (!$this->connection){
            //die('Connection Failed'.mysqli_error($connection));
            die('Connection Failed'.mysqli_error($this->connection));
        }
    }
    
   
    
       function select_all_visitor() {
//           session_start();
           $id = $_SESSION['admin_id'];
//           echo $id;           exit();
//      $id =  '2'; 
      
     // $id =  '1';     //   exit();
        $sql = "Select * from visitor order by id desc";
        //--$sql = "Select * from products  where login_id = $id order BY  id DESC";
        //$sql = "Select * from products order BY  id DESC where login_id = $id";
        if(mysqli_query($this->connection, $sql)){
            $query_result = mysqli_query($this->connection, $sql);
            return $query_result;
            //$student_info = mysqli_fetch_array($query_result);
            //while ($student_info = mysqli_fetch_array($query_result)){
//            while ($student_info = mysqli_fetch_assoc($query_result)){
//                echo '<pre>';
//                print_r($student_info);
//            }
////            echo '<pre>';
//           // print_r($query_result);
////            print_r($student_info);
//            exit();
        }else{
            die('Query Problem'.mysqli_error($this->connection));
        }
    }
    
        public function delete_visitor_by_id($id){
        $login_id = $_SESSION['admin_id'];
        $sql = "DELETE FROM visitor WHERE id='$id'";
        if(mysqli_query($this->connection, $sql)){
            $query_result = mysqli_query($this->connection, $sql);
            
//            session_start();
//            $_SESSION['message'] = 'Data Deleted Succesfully';
//            
//            header('Location: contactManage.php');
            $message = '<b>Visitor Deleted Succesfully</b>';
            return $message;
//            header('Location:viewStudent.php');
            
        }else{
            die('Query Problem'.mysqli_error($this->connection));
        }
    }
    

    
}
