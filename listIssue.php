<?php
    session_start();
    require("dbconnect.php");
    $sql = "SELECT * FROM `version`;";
    $result=mysqli_query($conn,$sql) or die("DB Error: Cannot retrieve message.");
    if (isset($_GET['m'])){
        $msg="<font color='red'>" . $_GET['m'] . "</font>";
    } else {
        $msg="Good morning";
    }
?> 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Page</title>
    <link rel="stylesheet" type="text/css" href="maincss.css">
</head>
<body>
    <h2>Issue List</h2>
    <form name="isssearch" method="POST" action="issueModel.php">
        <input type="text" name="search" placeholder="Search.." id="search">
        <input type="submit" value="搜尋">
    </form>
    <div id="ori">
        <table id="orignal">
        <tr id="header">
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
            // echo "<a href = 'Todoset.php?id={$rs['id']}'>OK</a>" . "</td>";
        }
        ?>
        </table>
   </div>

</body>
</html>