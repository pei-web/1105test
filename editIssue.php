<?php
session_start();
require("issueModel.php");

$Id = (int)$_GET['id'];
$rs = getDetail($Id);
date_default_timezone_set('Asia/Taipei');
$dtime = date('Y/m/d H:i:s');
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EditISSUE</title>
    <link rel="stylesheet" type="text/css" href="editform.css">
</head>
<body>
<div class="edit">
        <div class="bcolor">
            <!-- <img src="penwriting.png" id="penwriting" width="200" height="200"> -->
            <p>Edit Issue</p>
        </div>
        <div class="editform">
        <form class="editisssue" method="POST" action="editControl.php">
            <input type="hidden" name="id" value='<?php echo $Id; ?>'>
            <div class="item">
                <label>Model：</label>
                <input type="text" id="modname" name="modname" value='<?php echo ($rs['Model']); ?>'><br />
            </div><br/>
            <div class="item">
                <label>Model type：</label>
                <input list="modTypes" name="modType" id="modType" value='<?php echo ($rs['Modtype']); ?>'>
                <datalist id="modTypes">
                    <option value="Wired">
                    <option value="Wireless">
                    <option value="Wireless/Wired">
                </datalist><br />
            </div><br/>
            <div class="item">
                <label>Connection：</label>
                <input list="modConns" name="modConn" id="modConn" value='<?php echo ($rs['Connection']); ?>'>
                <datalist id="modConns">
                    <option value="Bluetooth">
                    <option value="Dongle">
                    <option value="USB">
                    <option value="USB Controller">
                </datalist><br />
            </div><br/>
            <div class="item">
                <label>Specific Device：</label>
                <input type="text" id="device" name="device" value='<?php echo ($rs['Device']); ?>'><br />
            </div><br />
            <div class="item">
                <label>Status：</label>
                <input type="text" id="status" name="status" value='<?php echo ($rs['Staus']); ?>'><br />
            </div><br />
            <div class="item">
                <label>Issue function：</label>
                <input type="text" id="issueFun" name="issueFun" value='<?php echo ($rs['IssueFunct']); ?>'><br />
            </div><br/>
            <div class="item">
                <label>Issue function2：</label>
                <input type="text" id="issueFun2" name="issueFun2" value='<?php echo ($rs['IssueFunct2']); ?>'><br />
            </div><br/>
            <div class="item">
                <label>Issue function3：</label>
                <input type="text" id="issueFun3" name="issueFun3" value='<?php echo ($rs['IssueFunct3']); ?>'><br />
            </div><br/>
            <div class="item">
                <label>Title/Test Description：</label>
                <input type="text" id="description" name="description" value='<?php echo ($rs['Description']); ?>'><br />
            </div><br/>
            <div class="item">
                <label>Fail Rate：</label>
                <input type="text" id="fRate" name="fRate" value='<?php echo ($rs['FailRate']); ?>'><br />
            </div><br/>
            <input type="submit" value="Submit" id="sub">
        </form>
        </div>
    </div>
</body>
</html>