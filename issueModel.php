<?php
    require_once("dbconnect.php");
    function find($val) {
        global $conn;
        // WHERE ``In($val)-->可用於多個查詢
        //`Description`：查詢 -->使用REGEXP $val(但$val為陣列) 
        // $sql = "SELECT * from `version` WHERE `Model`IN ('$val') or `Modtype`IN ('$val') or `Connection`IN ('$val') or `Device`IN ('$val') or `Staus`IN ('$val') or `IssueFunct`IN ('$val') or `IssueFunct2`IN ('$val') or `IssueFunct3`IN ('$val') or `Description`IN ('$val') or `FailRate`IN ('$val');";
        $sql = "SELECT * from `version` WHERE `Model`='$val' or `Modtype`='$val' or `Connection`='$val' or `Device`REGEXP '$val' or `Staus`='$val' or `IssueFunct`='$val' or `IssueFunct2`='$val' or `IssueFunct3`='$val' or `Description` REGEXP '$val' or `FailRate`='$val';";
        $result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
        return $result;
    }
    function addIssue($mod,$modtype,$connect,$device,$staus,$issf,$issf2,$issf3,$descri,$frate) {
        global $conn;
        $sql = "INSERT into `version` (`Model`,`Modtype`,`Connection`,`Device`,`Staus`,`IssueFunct`,`IssueFunct2`,`IssueFunct3`,`Description`,`FailRate`,`edit`) values ('$mod','$modtype','$connect','$device','$staus','$issf','$issf2','$issf3','$descri','$frate',current_timestamp());";
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
    function register($user,$pwd) {
        global $conn;
        $sql = "INSERT INTO `usercon` (`userName`,`Password`) values ('$user','$pwd');";
        $result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
    }
    function getUserpwd($user) {
        global $conn;
        $sql = "SELECT `Password` from `usercon` where userName='$user';";
        $result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
        // $rs=mysqli_fetch_assoc($result);
        // echo $result;
        return $result;
    }
    function login($user,$pwd) {
        global $conn;
        $sql = "SELECT * from `usercon` where userName='$user';";
        $result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
        // $rs=mysqli_fetch_assoc($result);
        // echo $result;
        return $result;
    }
?>