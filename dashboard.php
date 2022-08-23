 <?php 
 session_start();

if($_SESSION['admin_id'] == NULL){
    header('Location: index.php');
}else{
     $_SESSION['admin_id'];
}


?> 
            
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Message Manage | User Dashboard </title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->

  <?php require_once 'headerlinks.php';?>
  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="skin-blue sidebar-mini">

<?php require_once 'header.php';?>

<?php require_once 'sidebarMenu.php';?>
<div class="content-wrapper" style="min-height: 916px;">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    
    <?php


require_once './assets/class/messageClass.php';

$appObj = new MessageClass();




 



$query_result = $appObj->select_all_message();


$i=1; 
while ( $res = mysqli_fetch_assoc($query_result)){
  $i+=1;  
 
 
}


$seen_result = $appObj->seen_all_message();

$seen=1; 
while ( $seenRes = mysqli_fetch_assoc($seen_result)){
  $seen+=1;  
 
  
 
}







require_once './assets/class/visitorClass.php';

$appObj = new VisitorClass();


$visitor_result = $appObj->select_all_visitor();


$v=1; 
while ( $visitor_res = mysqli_fetch_assoc($visitor_result)){
  $v+=1;  
 
 
}

  
    ?>
    
    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-orange">
            <div class="inner">
              <h3><?php echo $i-1;?></h3>

              <p>Total Message</p>
            </div>
            <div class="icon">
              <i class="fa fa-envelope-o"></i>
            </div>
              <a href="messageManage" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-blue">
            <div class="inner">
              <h3><?php 
              $tseen = $seen-1;
                $tmess = $i-1;
                $unseen = $tmess - $tseen;
                echo $unseen;
              ?></h3>

              <p>New Message</p>
            </div>
            <div class="icon">
              <i class="fa fa-envelope-o"></i>
            </div>
              <a href="messageManageNotSeen" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-fuchsia">
            <div class="inner">
              <h3><?php echo $seen-1; ?></h3>

              <p>Seen Message</p>
            </div>
            <div class="icon">
              <i class="fa fa-eye"></i>
            </div>
              <a href="messageManageSeen" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-maroon">
            <div class="inner">
              <h3><?php
                $tseen = $seen-1;
                $tmess = $i-1;
                $unseen = $tmess - $tseen;
                echo $unseen;
              ?></h3>

              <p>Not Seen Message</p>
            </div>
            <div class="icon">
              <i class="fa fa-eye-slash"></i>
            </div>
              <a href="messageManageNotSeen" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
          
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-maroon">
            <div class="inner">
              <h3><?php
                echo $v-1;
              ?></h3>

              <p>Visitor Manage</p>
            </div>
            <div class="icon">
              <i class="fa fa-pagelines"></i>
            </div>
              <a href="visitorManage" class="small-box-footer">More info <i class="fa fa-arrow-circle-right"></i></a>
          </div>
        </div>
     
      </div>
      <!-- /.row -->





      <!-- Main row -->
     
      <!-- /.row (main row) -->

















            </div>
          </div>
          <!-- /.widget-user -->
        </div>
        <!-- /.col -->
      </div>










<!--  -->












    </section>
    <!-- /.content -->
  








<script>
  $(function () {
    $('input').iCheck({
      checkboxClass: 'icheckbox_square-blue',
      radioClass: 'iradio_square-blue',
      increaseArea: '20%' // optional
    });
  });
</script>




    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  <div class="control-sidebar-bg"></div>
</div>
<!-- ./wrapper -->




<?php require_once './footer.php';?>
<?php require_once './footerLinks.php';?>
</body>
</html>
