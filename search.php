<?php
    session_start();
    require("issueModel.php");

    $input=mysqli_real_escape_string($conn,$_POST['search']);
    // echo $input;
    // echo "SELECT * from `version` WHERE `Model`='$input' or `Modtype`='$input' or `Connection`='$input' or `Device`REGEXP '$input' or `Staus`='$input' or `IssueFunct`='$input' or `IssueFunct2`='$input' or `IssueFunct3`='$input' or `Description` REGEXP '$input' or `FailRate`='$input';";
    $result = find($input);
    //多條件查詢
    // $val = array();
    // $val = explode(" ",$input);
    // for($i = 0;$i < count($val); $i++) {
    //     echo $val[$i];
    //     echo "\n";
    // }
    // $stri = json_encode($val);
    // // echo gettype($val);
    // // echo gettype($stri);
    // echo $stri;
    // $revise = str_replace(array('[',']',),'',$stri);
    // // $revise = str_replace('"','\'',$rev);
    // echo $revise;
    // echo "SELECT * from `version` WHERE `Model`IN ($revise) or `Modtype`IN ($revise) or `Connection`IN ($revise) or `Device`IN ($revise) or `Staus`IN ($revise) or `IssueFunct`IN ($revise) or `IssueFunct2`IN ($revise) or `IssueFunct3`IN ($revise) or `Description`IN ($revise) or `FailRate`IN ($revise);";
    // $result = find($revise);
    
    // $sum = count($result);
    // echo $sum;
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Find</title>
    <link rel="stylesheet" type="text/css" href="findP.css">
</head>
<body>
    <div class="ans_table">
    <table id="answer">
        <tr id="title">
            <td>ID</td>
            <td>Model</td>
            <td>ModelType</td>
            <td>Connection</td>
            <td>SpecificDevice</td>
            <td>Status</td>
            <td>IssueFunction</td>
            <td>IssueFunction2</td>
            <td>IssueFunction3</td>
            <td>TestDescription</td>
            <td>FailRate</td>
            <td>Edittime</td>
        </tr>
        <?php
        $sum = 0;
        while ($rs=mysqli_fetch_assoc($result)) {
            echo "<tr><td id='tab'>" . $rs['ID'] . "</td>";
            echo "<td id='tab'>" . $rs['Model'] . "</td>";
            echo "<td id='tab'>" . $rs['Modtype'] . "</td>"; 
            echo "<td id='tab'>" . $rs['Connection'] . "</td>";
            echo "<td id='tab'>" . $rs['Device'] . "</td>";
            echo "<td id='tab'>" . $rs['Staus'] . "</td>";
            echo "<td id='tab'>" . $rs['IssueFunct'] . "</td>";
            echo "<td id='tab'>" . $rs['IssueFunct2'] . "</td>";
            echo "<td id='tab'>" . $rs['IssueFunct3'] . "</td>";
            echo "<td id='tab'>" . $rs['Description'] . "</td>";
            echo "<td id='tab'>" . $rs['FailRate']. "</td>"; 
            echo "<td id='tab'>" . $rs['edit']. "<a href ='editIssue.php?id={$rs['ID']}'>編輯</a>" . "</td>";
            echo "</tr>";
            $sum += 1;
            // echo "<a href = 'Todoset.php?id={$rs['id']}'>OK</a>" . "</td>";
        }
        echo "<span style='font-size:24px;color:#FF4500;'>總共搜尋到</span>". "<span style='font-size:24px;color:#FF4500;'>".$sum."</span>". "<span style='font-size:24px;color:#FF4500;'>筆</span>";
        ?>
        </table>
    </div>
    <div class="back">
        <a href="listIssue.php">返回搜尋</a>
    </div>
</body>
</html>