<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AddISSU</title>
    <link rel="stylesheet" type="text/css" href="addform.css">
</head>
<body>
<h1>Add new Issue</h1>
    <div class="addform">
    <form class="addisssue">
        <h3>Headset Information</h3>
        <hr />
        <div lass="item">
            <label>Model：</label>
            <input type="text" id="modname" name="modname">
        </div><br />
        <div class="item">
            <label>Model type：</label>
            <select id="modtype" name="modtype">
                <option value="wired">Wired</option>
                <option value="wireless">Wireless</option>
                <option value="wireless/wired">Wireless/Wired</option>
            </select>
        </div><br />
        <div class="connitem">
            <label>Connection：</label>
            <!-- <div class="connBtns">                
                <button type="button" class="button1" name="modConn" value="Bluetooth">
                    <img src="bluetooth.png" id="BT" name="BT">Bluetooth</button>
                <button type="button" class="button1" name="modConn" value="dongle">
                    <img src="dongle.png" id="dongle" name="dongle">Dongle</button>
                <button type="button" class="button1" name="modConn" value="usb">
                    <img src="USB.png" id="USB" name="usB">USB</button>
                <button type="button" class="button1" name="modConn" value="usbcontroller">
                    <img src="usbcon.png" id="USBcon" name="USBcon">USB Controller</button>
            </div><br /> -->
        </div>
        <br />
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
            <input type="text" id="issueFun" name="issueFun"><br />
        </div><br/>
        <div class="item">
            <label>Issue function2：</label>
            <input type="text" id="issueFun2" name="issueFun2"><br />
        </div><br/>
        <div class="item">
            <label>Issue function3：</label>
            <input type="text" id="issueFun3" name="issueFun3"><br />
        </div><br/>
        <div class="item">
            <label>Title/Test Description：</label>
            <input type="text" id="description" name="description"><br />
        </div><br/>
        <div class="item">
            <label>Fail Rate：</label>
            <input type="text" id="fRate" name="fRate"><br />
        </div><br/>
        <button>送出</button>
        <!-- <input type="submit" value="Submit"> -->
    </form>
    </div>
</body>
</html>