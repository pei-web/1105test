<?php
    require_once("dbconnect.php");
    function find($val) {
        // session_start();
        // require("dbconnect.php"); 
        // $val = $_POST['search'];
        global $conn;
        // WHERE ``In($val)-->可用於多個查詢
        $sql = "select * from version where `Model`=$val or `Modtype`=$val or `Connection`=$val or `Device` REGEXP $val or `Staus`=$val or `IssueFunct`=$val or `IssueFunct2`=$val or `IssueFunct3`=$val or `Description` REGEXP $val or `FailRate`=$val;";
        $result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
    }
    function addIssue($mod,$modtype,$connect,$device,$staus,$issf,$issf2,$issf3,$descri,$frate) {
        global $conn;
        $sql = "insert into version (Model,Modtype,Connection,Device,Staus,IssueFunct,IssueFunct2,IssueFunct3,Description,FailRate,edit) values ('$mod','$modtype','$connect','$device','$staus','$issf','$issf2','$issf3','$descri','$frate',current_timestamp());";
        mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL	
    }
    function updateIssue($id,$mod,$modtype,$connect,$device,$staus,$issf,$issf2,$issf3,$descri,$frate) {
        global $conn;
        if ($id== -1) {
            addJob($mod,$modtype,$connect,$device,$staus,$issf,$issf2,$issf3,$descri,$frate);
        } else {
            $sql = "UPDATE `version` SET `Model`='$mod',`Modtype`='$modtype',`Connection`='$connect',`Device`='$device',`Staus`='$staus',`IssueFunct`='$issf',`IssueFunct2`='$issf2',`IssueFunct3`='$issf3',`Description`='$descri',`FailRate`='$frate',`edit`=current_timestamp() where `version`.`ID`=$id;";
            mysqli_query($conn, $sql) or die("Insert failed, SQL query error"); //執行SQL
        }
    }
    function getDetail($id) {
        global $conn;
        $sql = "select * from version where ID='$id';";
        $result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
        $rs=mysqli_fetch_assoc($result);
        return $rs;
    }
?>