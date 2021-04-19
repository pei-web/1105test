
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AddISSUE</title>
    <link rel="stylesheet" type="text/css" href="add.css"/>
</head>
<body>
<h1>Add new Issue</h1>
    <div class="addform">
    <form class="addisssue" method="POST" action="addCon.php">
        <h3>Headset Information</h3>
        <hr />
        <div lass="item">
            <label>Model：</label>
            <input type="text" id="mod" name="mod">
        </div><br />
        <div class="item">
            <label>Model type：</label>
            <select id="modtype" name="modtype">
                <option value="wired">Wired</option>
                <option value="wireless">Wireless</option>
                <option value="wireless/wired">Wireless/Wired</option>
            </select>
        </div><br />
        <div class="item">
            <label>Connection：</label>
            <select id="modconn" name="modconn">
                <option value="bluetooth">Bluetooth</option>
                <option value="dongle">Dongle</option>
                <option value="usb">USB</option>
                <option value="usbcontrol">USB Control</option>
            </select>
        </div><br />
        <h3>Issue Information</h3>
        <hr />
        <div class="item">
            <label>Specific Device：</label>
            <input type="text" id="device" name="device"><br />
        </div><br />
        <div class="item">
            <label>Status：</label>
            <input type="text" id="status" name="status"><br />
        </div><br />
        <div class="item">
            <label>Issue function：</label>
            <input type="text" id="issuef" name="issuef"><br />
        </div><br/>
        <div class="item">
            <label>Issue function2：</label>
            <input type="text" id="issuef2" name="issuef2"><br />
        </div><br/>
        <div class="item">
            <label>Issue function3：</label>
            <input type="text" id="issuef3" name="issuef3"><br />
        </div><br/>
        <div class="item">
            <label>Title/Test Description：</label>
            <input type="text" id="description" name="description"><br />
        </div><br/>
        <div class="item">
            <label>Fail Rate：</label>
            <input type="text" id="fail" name="fail"><br />
        </div><br/>
        <input type="submit" value="送出" id="subm" >
    </form>
    </div>
</body>
</html>