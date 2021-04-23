-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2021-04-23 08:30:33
-- 伺服器版本： 10.4.18-MariaDB
-- PHP 版本： 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `swtest`
--

-- --------------------------------------------------------

--
-- 資料表結構 `usercon`
--

CREATE TABLE `usercon` (
  `ID` int(11) NOT NULL,
  `userName` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `usercon`
--

INSERT INTO `usercon` (`ID`, `userName`, `Password`) VALUES
(1, 'merrysw', '1234567890'),
(2, 'merrydqe', '0987654321'),
(3, 'guest', '999999'),
(4, 'dqe', 'rtyuiop'),
(6, 'test', 'qazwsx');

-- --------------------------------------------------------

--
-- 資料表結構 `version`
--

CREATE TABLE `version` (
  `ID` int(250) NOT NULL,
  `Model` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Modtype` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Connection` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Device` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Staus` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `IssueFunct` text COLLATE utf8_unicode_ci NOT NULL,
  `IssueFunct2` text COLLATE utf8_unicode_ci NOT NULL,
  `IssueFunct3` text COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `FailRate` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `edit` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `version`
--

INSERT INTO `version` (`ID`, `Model`, `Modtype`, `Connection`, `Device`, `Staus`, `IssueFunct`, `IssueFunct2`, `IssueFunct3`, `Description`, `FailRate`, `edit`) VALUES
(1, 'HDT608', 'Wireless', 'Dongle', 'Windows7', '', 'Hotplug', 'Sound', '', 'First time plug the dongle to the windows OS, the system volume is \"mute\" but still can hear music from headset.', '', '2021-04-13 15:05:44'),
(2, 'HDT608', 'Wireless', 'Dongle', 'Windows7', 'unsolve', 'Sound', 'nrtyjuuuuuuhn', 'Volume', 'Fast adjust the volume by wheel when  the volume is between 0% and 20% sometimes it still have music on headset when system volume is 0%.', '', '2021-04-14 16:55:32'),
(3, 'HDT608', 'Wireless', 'Dongle', 'DUT', '', 'Hotplug', 'Other', '', 'Sometimes when plug dongle to different USB port it does not set the device to default,', '5/5', '2021-04-14 16:46:56'),
(4, 'HDT608', 'Wireless', 'Dongle', 'DUT', '', 'Power managerment', 'Charging', 'LED', 'Sometimes can get LED fast blinking by turning on/off HS while charging ', '', '2021-04-13 15:05:44'),
(5, 'HDT608', 'Wireless', 'Dongle', 'DUT', '', 'Power managerment', 'Charging', 'LED', 'LED wonnot turn off when battery is fully charged then power on/off', '', '2021-04-13 15:05:44'),
(6, 'HDT608', 'Wireless', 'Dongle', 'PS4', '', 'Sound', '', '', 'Headset wheel asynchronous with PS4', '', '2021-04-13 15:05:44'),
(7, 'HDT608', 'Wireless', 'Dongle', 'Windows7', '', 'Hotplug', 'Sound', 'Volume', 'The volume become loud suddenly but volume value not change when  fast unplug/plug dongle.', '', '2021-04-14 16:57:39'),
(8, 'HDT608', 'Wireless', 'Dongle', 'Windows&OSX', '', 'Sound', 'Hotplug', 'Charging', 'The Rotary wheel can not adjust volume when power off/ on the headset under charging mode.', '', '2021-04-13 15:05:44'),
(9, 'HDT608', 'Wireless', 'Dongle', 'DUT', '', 'Sound', '', '', 'The notification (bi sound) cannot be triggered when volume is reached to max (not always but most of time). ', '', '2021-04-13 15:05:44'),
(10, 'HDT601', 'Wireless', 'Dongle', 'Windows', '', 'Sound', '', '', 'The music can not hear when volume level set \"4\". ', '', '2021-04-13 15:05:44'),
(11, 'HDT601', 'Wireless', 'Dongle', 'Windows&OSX', '', 'Hotplug', 'Sound', 'Power managerment', 'Sometimes the music cannot hear when power off/on the HF', '', '2021-04-13 15:05:44'),
(12, 'HDT601', 'Wireless', 'Dongle', 'Windows 7', '', 'Enumerate', '', '', 'The dongle is enumerated with incorrect name \"USB sound device\" not \"Logi H600 Headset\" first.', '', '2021-04-13 15:05:44'),
(13, 'BHC512', 'Wireless', 'Bluetooth', 'iOS&Andrioid', '', 'Sound', 'Pairing', '', 'No \"Paring\" tone when HF enter pairing mode', '', '2021-04-13 15:05:44'),
(14, 'BHC512', 'Wireless', 'Bluetooth', 'iOS&Andrioid', '', 'Sound', '', '', 'The V+ cannot unmute microphone when mute microphone under skype chat & incomung call', '', '2021-04-13 15:05:44'),
(15, 'BHC512', 'Wireless', 'Bluetooth', 'Android', '', 'Sound', 'Remote control', '', 'The music cannot Forward/Rewind when press and hold \"Skip Forward/backward\" track control via youtube ', '', '2021-04-13 15:05:44'),
(16, 'BHC512', 'Wireless', 'Dongle', 'Windows&OSX', '', 'Hotplug', 'Sound', 'Power managerment', 'Sometimes the music cannot hear when unplug/ replug dongle.', '', '2021-04-13 15:05:44'),
(17, 'BHC512', 'Wireless', 'Dongle', 'Windows', '', 'Remote control', '', '', 'The pause/ stop/ Next Track/ Prev. Track/ Fast Forward/ Rewind are no function when music playback via Media player/ iTunes', '', '2021-04-13 15:05:44'),
(18, 'BHC512', 'Wireless', 'Dongle', 'Windows', '', 'Sound', '', '', 'The music can not hear when volume level set \"4\". ', '', '2021-04-13 15:05:44'),
(19, 'BHC512', 'Wireless', 'Dongle', 'Windows7', '', 'Enumerate', '', '', 'The dongle is enumerated with incorrect name \"USB sound device\" not \"Logi H800 Headset\" first.', '', '2021-04-13 15:05:44'),
(20, 'BHC512', 'Wireless', 'Dongle', 'Windows&OSX', '', 'Hotplug', 'Sound', 'Power managerment', 'The music can hear from HF while power off/on the HF when volume setting \"Mute\"', '', '2021-04-13 15:05:44'),
(21, 'BHC512', 'Wireless', 'Dongle', 'Windows 7', '', 'Sound', '', '', 'Sometimes the volume adjust is increase / decrease  1% or 3% level instead 2%', '', '2021-04-13 15:05:44'),
(22, 'BHC512', 'Wireless', 'Bluetooth', 'Windows', '', 'Enumerate', '', '', 'The \"Logi H800 H\" display Bluetooth pairing list instead of \"Logi H800 Headset\" about 2 mins when HF enter mode. ', '', '2021-04-13 15:05:44'),
(23, 'HDT803', 'Wired', 'Dongle (D2.5)', 'OSX', '', 'Enumerate', '', '', 'The chat mode can not be detect when dongle setup the PC mode. ', '', '2021-04-13 15:05:44'),
(24, 'HDT803', 'Wired', 'Dongle (D2.5)', 'Windows&OSX&iOS&Android', '', 'Sound', '', '', 'The sound can be hear when volume adjust to \"min\" via HF volume wheel.', '', '2021-04-13 15:05:44'),
(25, 'HDT803', 'Wired', 'Dongle (D2.5)', 'Windows', '', 'Sound', '', '', 'The left/right earbud increase/decrease volume are not same sync when adjusted volume via HF volume wheel. ', '', '2021-04-13 15:05:44'),
(26, 'HDT803', 'Wired', 'Dongle(D3)', 'Windows&OSX&iOS&Android', '', 'Sound', '', '', 'The sound can be hear when volume adjust to \"min\" via HF volume wheel.', '', '2021-04-13 15:05:44'),
(27, 'HDT803', 'Wired', 'Dongle(D3)', 'iOS&Android', '', 'Sound', '', '', 'The mic mute is no function when press mute \"on\" button from HF', '', '2021-04-13 15:05:44'),
(28, 'HDT803', 'Wired', 'Dongle(D3)', 'DUT', '', 'UI', '', '', 'The Status UI  is not sync execute volume adjsut and change game/chat mode.', '', '2021-04-13 15:05:44'),
(29, 'HDT803', 'Wired', 'Dongle(D3)', 'OSX', '', 'Enumerate', '', '', 'The chat mode can not be detect when dongle setup the PC mode. ', '', '2021-04-13 15:05:44'),
(30, 'HDT803', 'Wired', 'Dongle(D3)', 'Windows&OSX', '', 'Sound', '', '', 'The volume can not be adjusted via dongle volume knob.', '', '2021-04-13 15:05:44'),
(31, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Link loss', '', '', 'The DUT enter pairing mode when out of range under playback/ active call within about 1mins return back range.', '', '2021-04-13 15:05:44'),
(32, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'connected', '', '', 'The DUT cannot auto reconnected when out of range under playback music/ active call within about 1mins return back range.', '', '2021-04-13 15:05:44'),
(33, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'voice prompt', '', '', 'The Battery level and HF connected voice prompt (VP) are heard when 2nd incoming call calling in', '', '2021-04-13 15:05:44'),
(34, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Sound', '', '', 'The \"Zi\" noise be heard when turn off phone\'s BT.', '', '2021-04-13 15:05:44'),
(35, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'Sound', '', '', 'R/ Both side with loud noise once when forget this device from device setting.', '', '2021-04-13 15:05:44'),
(36, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Volume sync', '', '', '[Device issue]The volume cannot sync and icon not display when press vol up/dn button under playback music. (Youtube, google play)', '', '2021-04-13 15:05:44'),
(37, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Sound', 'MultiPoint', '', 'The music switch to AG2 about 30 sec when short press MFB button pause AG1 music under AG1 playing via Youtube and audio on AG1, AG2 playing via Apple music.', '', '2021-04-13 15:05:44'),
(38, 'BHC666', 'Wireless', 'Bluetooth', 'Windows&iOS&Android', '', 'Sound', '', '', '[Single and multipoint] The streaming is interrupted about 1sec then resume playback.', '', '2021-04-13 15:05:44'),
(39, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Sound', '', '', 'The music ring tone loudly when incoming call call in. (initial)', '', '2021-04-13 15:05:44'),
(40, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Other', '', '', '[PC][Device issue]The restart system message windows pop when pairing successful.', '', '2021-04-13 15:05:44'),
(41, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Power managerment', '', '', 'The battery gauge is not sync the app battery level. (The iOS battery gauge: 10%, 20%, 30%... ; DUT battery gauge: 10%, 20%, 40%, 60%...) \n', '', '2021-04-13 15:05:44'),
(42, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'Volume adjustment', '', '', 'The volume cannot be in/decrease when reconnected via very long press MFB button that DUT power on and enter pairing mode. (YouTube)(3/20)', '', '2021-04-13 15:05:44'),
(43, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Volume sync', '', '', '[Device issue] The volume cannot sync when pause music then adjust volume down to min and resume the music.', '', '2021-04-13 15:05:44'),
(44, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'Volume sync', '', '', '[Device issue]The volume cannot sync and icon not display when press vol up/dn button under playback music. (Youtube, google play)', '', '2021-04-13 15:05:44'),
(45, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Voice prompt', '', '', '[Voice Prompt] [Factory Reset] The battery Level voice prompt is heard then \"pairing tone\" and \"ready to pair, download Jaybird App for an assisted setup.\" VP isn\'t heard after factory reset.', '', '2021-04-13 15:05:44'),
(46, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', 'OTA', '', '[Android App] [FOTA] [FW Update App halt]', '', '2021-04-13 15:05:44'),
(47, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'Other', '', '', 'The DUT enter power off status when AG1 incoming call and reject incoming call via DUT.', 'Random[3/20]', '2021-04-13 15:05:44'),
(48, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', 'OTA', '', '[FOTA Time-out handling]', '', '2021-04-13 15:05:44'),
(49, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'APP', 'OTA', '', '[FOTA Time-out handling]', '', '2021-04-13 15:05:44'),
(50, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', '[Spotify issue] The Spotify cannot be playback when Power off/on DUT.', '', '2021-04-13 15:05:44'),
(51, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'APP', '', '', '[Skype][HPF] The speaker is switch phone and DUT continued after answer Skype incoming call.', '', '2021-04-13 15:05:44'),
(52, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'APP', '', '', '[Jaybird QA App build275] 5min failed to connect to BOLT', '', '2021-04-13 15:05:44'),
(53, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'Power managerment', '', '', '[Stereo] [Youtube]BOLT disconnected suddenly when battery level 20%.', '', '2021-04-13 15:05:44'),
(54, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'Connected', '', '', '[Stereo] [Youtube]BOLT disconnected after resume the music when paused.', '', '2021-04-13 15:05:44'),
(55, 'BHC666', 'Wireless', 'Bluetooth', 'Windows10', '', 'Link loss', '', '', '[Stereo] [Youtube] BOLT cannot heard music when return the range', '', '2021-04-13 15:05:44'),
(56, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'Sound', '', '', '[Stereo] [Youtube]BOLT not able heard music suddenly', '', '2021-04-13 15:05:44'),
(57, 'BHC666', 'Wireless', 'Bluetooth', 'Android&iOS', '', 'APP', 'OTA', '', '[FOTA]The \"ready to pair, download Jaybird App for an assisted setup.\" VP isn\'t heard after FOTA', '', '2021-04-13 15:05:44'),
(58, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', '', '', '[Jaybird QA App] The app will crash when changing EQ fastly.', '', '2021-04-13 15:05:44'),
(59, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', 'OTA', '', '[FOTA] The INSTALL UPDATE not able to running.', '', '2021-04-13 15:05:44'),
(60, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'APP', 'OTA', '', '[FOTA]The BOLT still keep FW update status (White and red LED flash) when QA for iOS #279 has been finished then return back.', '', '2021-04-13 15:05:44'),
(61, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'APP', '', '', '[Battery Level prompt] After cut-off and then do the charge 10mins, but the battery percentage display 17% then change 100% --> 89%', '', '2021-04-13 15:05:44'),
(62, 'BHC666', 'Wireless', 'Bluetooth', 'Android&Windows', '', 'APP', 'Sound', 'Mulitpoint', 'The music still playback but can not hear when QA App Hanging via fast tap EQ.', '', '2021-04-13 15:05:44'),
(63, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', 'Sound', '', '[V0.3.2.5] The sound will loud suddenly when fast change EQ.', '', '2021-04-13 15:05:44'),
(64, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', '', '', '[V0.3.2.5] The \"Auto Power Off\" function cannot be save when enable via setting page.', '', '2021-04-13 15:05:44'),
(65, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'MultiPoint', '', '', '[Multipoint][]AG1:A2DP][AG2:outgoing call] \nThe AG2 outgoing call cannot be cancel when double press MFB button', '', '2021-04-13 15:05:44'),
(66, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', '', '', '[V0.3.3.1] The \"Button control\" function is not workable.', '', '2021-04-13 15:05:44'),
(67, 'BHC666', 'Wireless', 'Bluetooth', 'iOS&Android', '', 'APP', '', '', '[Jaybird app]The \"Language and tone\" setting page not sync currect \"Language\" when change other language, still keep \"English(US)\"', '', '2021-04-13 15:05:44'),
(68, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'APP', '', '', '[Jaybird app]The \"V\" confirmation symbol not display when change language to \"Japanese\"', '', '2021-04-13 15:05:44'),
(69, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'APP', '', '', '[Jaybird app]The \"V\" confirmation symbol is incorrect language \"English(US)\" when change language to \"Korean\"', '', '2021-04-13 15:05:44'),
(70, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', 'OTA', '', '[FOTA][Jaybird app][KO]The\"KO\"and \"UK\" language not able to upgrade via jaybird app.', '', '2021-04-13 15:05:44'),
(71, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', '', '', '[Jaybird app]The language option title is not identical. (CN, JP only English and lack of country; French, German, Spanish and Korean language lack of country.', '', '2021-04-13 15:05:44'),
(72, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'APP', '', '', '[Jaybird app]The incorrect word when restart process of FOTA almost finished.', '', '2021-04-13 15:05:44'),
(73, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', '', '', 'No tone (Power on, off and battery level) when setting \"only tone\" via jaybird app', '', '2021-04-13 15:05:44'),
(74, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', '', '', 'The \"Button control\" cannot confirm \"Last listening list\"', '', '2021-04-13 15:05:44'),
(75, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', '', '', 'The battery level icon overlap the \"connected HF\".', '', '2021-04-14 17:35:36'),
(76, 'BHC666', 'Wireless', 'Bluetooth', 'Android', '', 'APP', '', '', 'Not able to confirm \"only tone\" via VP setting page.', '', '2021-04-13 15:05:44'),
(77, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'MultiPoint', '', '', '[MultiPoint] [BT Connect] one device can not auto reconnect when power off/on(Fail/verify times)', ' [9/10]', '2021-04-19 10:47:50'),
(78, 'BHC666', 'Wireless', 'Bluetooth', 'iOS', '', 'Voice prompt', '', '', '[VOICE PROMPTS] The app display not connected HF when change VP via iOS app.', '', '2021-04-13 15:05:44'),
(79, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'MultiPoint', '', '', '[Multipoint] [Noise]', '', '2021-04-13 15:05:44'),
(80, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'connected', 'App', '', '[App] The APP cannot connected DUT', '', '2021-04-13 15:05:44'),
(81, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'App', '', '', '[EQ][APP] no function', '', '2021-04-13 15:05:44'),
(82, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', '[App] Cannot change Voice Prompt Language', '', '2021-04-13 15:05:44'),
(83, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'App', 'Voice prompt', '', '[APP][VP] Can heard VP when setting only \"Prompt\" via App', '', '2021-04-13 15:05:44'),
(84, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'App', 'connected', '', 'The app cannot reconnect when power off/on DUT while Jaybird App is open', '', '2021-04-13 15:05:44'),
(85, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'connected', '', '', 'The app cannot connect when music playing then launch Jaybird App', '[4/5]', '2021-04-13 15:05:44'),
(86, 'BHC666', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'The \"Preview\" item disappear when selected after de-select', '', '2021-04-13 15:05:44'),
(87, 'HDT618', 'Wireless', 'Dongle', '', '', 'APP', '', '', '[Spotify issue] The music cannot be heard when re-plug the dongle', '', '2021-04-13 15:05:44'),
(88, 'HDT618', 'Wireless', 'Dongle', '', '', 'Volume adjustment', '', '', 'The volume wheels is too sensitive to adjust volume 2% level hardly', '', '2021-04-13 15:05:44'),
(89, 'HDT618', 'Wireless', 'Dongle', '', '', 'Other', 'Volume sync', '', '[Devices issue]The volume value cannot keep when power off/on DUT. (The volume is change to default value.)', '', '2021-04-13 15:05:44'),
(90, 'HDT618', 'Wireless', 'Dongle', '', '', 'Hotplug', 'Sound', '', '[Hotplug][Stereo]The DUT can hear music when volume setting mute then after replug dongle.', '', '2021-04-13 15:05:44'),
(91, 'HDT628_787', 'Wireless/Wired', 'Dongle', '', '', 'LED', '', '', 'The Sidebar LED is not light when DUT pairing unsuccessful. ', '', '2021-04-13 15:05:44'),
(92, 'HDT628_787', 'Wireless/Wired', 'Dongle', '', '', 'Sound', 'Volume adjustment', 'Volume sync', 'The left and right ear volume is obviously different when adjust volume.', '', '2021-04-13 15:05:44'),
(93, 'HDT628_787', 'Wireless/Wired', 'Dongle', '', '', 'Volume adjustment', '', '', 'The Max volume tone is not heard when non PC Mode switch to PC Mode & Volume both set \"100\" then adjust volume.', '', '2021-04-13 15:05:44'),
(94, 'HDT628_787', 'Wireless/Wired', 'Dongle', '', '', 'Sound', '', '', 'The side tone is loud when record voice memo under DUT connected system via USB cable. ', '', '2021-04-13 15:05:44'),
(95, 'HDT628_787', 'Wireless/Wired', 'Dongle', '', '', 'Sound', '', '', 'The step Up tone not be heard when turn the rotary encoder clockwise direction', '', '2021-04-13 15:05:44'),
(96, 'HDT628_787', 'Wireless/Wired', 'Dongle', '', '', 'Sound', '', '', '[Ground loop noise issue]\nThe noise is be heard when plug  3.5mm jack and USB cable to system under DUT power off status. ', '', '2021-04-13 15:05:44'),
(97, 'HDT628_787', 'Wireless/Wired', 'Dongle', '', '', 'Sound', '', '', 'The side tone is loud when record voice memo under DUT connected system via USB cable. ', '', '2021-04-13 15:05:44'),
(98, 'HDT628_787', 'Wireless/Wired', 'Dongle', '', '', 'Sound', '', '', 'The press sound obviously when press mute button under micboom down position. ', '', '2021-04-13 15:05:44'),
(99, 'HDT725', 'Wired', 'USB', '', '', 'Sound', '', '', 'The sound can be heard when continued press vol- button.', '', '2021-04-13 15:05:44'),
(100, 'HDT725', 'Wired', 'USB', '', '', 'Enumerate', '', '', 'The USB enumeration name is incorrect. (The name: Headphone)', '', '2021-04-13 15:05:44'),
(101, 'BHC789', 'Wired', 'USB', '', '', 'Other', '', '', '[Skype issue]  The micboom is not mute when micboom up position under skype call. \n[Root cause] The Skype cannot auto switch to setting when default device via system setup, need to setup from Skype app.', '', '2021-04-13 15:05:44'),
(102, 'HPP005', 'Wireless', 'Bluetooth', '', '', 'APP', 'Power managerment', '', 'The \"Headphone and battery display\" still keep 0% ', '', '2021-04-13 15:05:44'),
(103, 'HPP005', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', 'The \"Safe listening activate\" still keep \"00min 00sec\"', '', '2021-04-13 15:05:44'),
(104, 'HPP005', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', 'The \"Daily Limits\" change to 100% When volume adjust to low volume.', '', '2021-04-13 15:05:44'),
(105, 'HPP005', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', 'The \"Current volume(dBA)\" always keep 100dB when volume very low or mute.', '', '2021-04-13 15:05:44'),
(106, 'HPP005', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', 'The \"Current volume(dBA) display value not able to refresh.', '', '2021-04-13 15:05:44'),
(107, 'HPP005', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', 'The \"High Volume security lock\" will change to relock status when change language.', '', '2021-04-13 15:05:44'),
(108, 'HPP005', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', 'The \"Daily Limits \" not able to resetafter 12:00pm.', '', '2021-04-13 15:05:44'),
(109, 'HPP005', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', 'The \"High Volume security lock\" still lock when resetafter 12:00pm.', '', '2021-04-13 15:05:44'),
(110, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'Power managerment', '', '', 'DUT no power off after idle 10min', '', '2021-04-13 15:05:44'),
(111, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'NFC', 'MultiPoint', '', '1. AG1 and AG2 turn on and NFC is enable.\r\n2. AG1 and AG2 both are paired with DUT before.\r\n3. DUT turn on and connected to AG1\r\n4. DUT and AG2\'s NFC touch each other.\r\nExpected Result : DUT connected to AG1 and AG2\r\nActual Result : When AG2\'s NFC touch, AG1 will disconnect', '', '2021-04-13 15:05:44'),
(112, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'NFC', 'MultiPoint', '', '1. AG1&AG2&AG3 turn on and NFC is enable.\n2. AG1, AG2, and AG3 are paired with DUT before..\n3. DUT turn on and connected to AG1 and then connect to AG2\n4. DUT and AG3\'s NFC touch each other.\nExpected Result : DUT disconnect with AG2 and connected to AG3\nActual Result : When AG3\'s NFC touch, AG1 & AG2 will disconnect', '', '2021-04-13 15:05:44'),
(113, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'NFC', 'MultiPoint', '', '1. AG1&AG2&AG3 turn on and NFC is enable.\n2. AG1 and AG2 both are paired with DUT before, but AG3 is not be paried before.\n3. DUT turn on and connected to AG1 and then connect to AG2\n4. DUT and AG3\'s NFC touch each other.\nExpected Result : DUT disconnect with AG2 and connected to AG3\nActual Result : When AG3\'s NFC touch, AG1 will disconnect', '', '2021-04-13 15:05:44'),
(114, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'NFC', '', '', '1. AG turn on and NFC is enable.\n2. DUT turn on and connected to AG\n3. DUT and AG\'s NFC touch each other.\nExpected Result : DUT disconnect to AG1\nActual Result : DUT reconnect to AG1', '', '2021-04-13 15:05:44'),
(115, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'NFC', 'MultiPoint', '', '1. AG turn on and NFC is enable.\n2. DUT turn on and connected to AG1 & AG2\n3. DUT and AG2\'s NFC touch each other.\nExpected Result : DUT disconnect to AG2\nActual Result : DUT disconnect to AG1, reconnect to AG2', '', '2021-04-13 15:05:44'),
(116, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'Pairing', '', '', '[Single point]\n1. DUT turn on and not connected to AG1 \n2. DUT turn off via press power button 2s\n3. DUT power on and enter pairing via press power button 7s\nExpected Result : DUT enter pairing and connected to AG2 \nActual Result : DUT connected to AG1, not enter pairing.', '', '2021-04-13 15:05:44'),
(117, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'MultiPoint', '', '', '[Multipoint]\n1. DUT turn on and connected to AG1 & AG2\n2. AG1(iPhone 8 plus) play music via Apple music app\n3. Tap \"home\" via AG2 (SONY Kagura)\n4. issue active\nExpected Result: The AG1\'s music shall not be pause.\nActual Result: The AG1\'s music paused when tag AG2\'s \"Home\"\nThis issue also happened as below:\na. LG Nexus 6p & Sony Pine\nb. iPhone 8 plus & Sony SM21\nc. iPhone 8 plus & LG Nexus 6p (random)\nd. iPhone 8 plus & Xaimi redmi note4 (random)', '', '2021-04-13 15:05:44'),
(118, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'Other', '', '', '1. DUT turn on and connected to AG (iPhone 8 plus )\n2. AG set user-defined music of incoming call ring tone.(Not AG default incoming ring tone) \n3. Make incoming call to AG\n4. The DUT can hear Incoming call ring tone\n5. issue active\nExpected Result: incoming call ring not too loudly\nActual Result: incoming call ring volume too loudly', '', '2021-04-13 15:05:44'),
(119, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'Power managerment', 'LED', '', '1. DUT auto shot off\r\n2. DUT Plug into charger\r\n3. LED light off when full charging\r\n4. DUT turn on \r\n5. Press \"Power\" button\r\nExpected Result: Battery status shall be light \"Green\" LED\r\nActual Result: \"Orange\" LED light\r\nCheck battery status via iPhone 8 plus (iOS 12.0) \"80%\"', '', '2021-04-13 15:05:44'),
(120, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'Power managerment', 'LED', '', '1. DUT turn on and connected to AG\n2. DUT Plug into charger\n3. LED light on while charging\n4. DUT replug  into charger\nExpected Result: LED shall be light on\nActual Result: LED off ', '', '2021-04-13 15:05:44'),
(121, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'MultiPoint', '', '', '1. DUT turn on and connected to AG1 & AG2\n2. Make an active call on AG2 while incoming call on AG1\n3. Short Press MFB\nExpected Result: Active call of AG2 is ended\nActual Result: Active call of AG2 is Hold and answer  incoming call on AG1', '', '2021-04-13 15:05:44'),
(122, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'MultiPoint', '', '', '1. DUT turn on and connected to AG1 & AG2\n2. There has an active call on AG2 while outgoing call on AG1\n3. Short Press MFB\nExpected Result: Cancel active call of AG2.\nActual Result: Cancel outgoing call on AG1', '', '2021-04-13 15:05:44'),
(123, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'MultiPoint', '', '', '1. DUT turn on and connected to AG1 & AG2\n2. There has an incoming call on AG2 while active call on AG1.\n3. Short Press MFB\nExpected Result: End call of AG1 and back to incoming call on AG2\nActual Result: Answer incoming call on AG2 and hold active call on AG1.', '', '2021-04-13 15:05:44'),
(124, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'MultiPoint', '', '', '1. DUT turn on and connected to AG1 & AG2\n2. Make an outgoing call on AG2 while  active call on AG1.\n3. Short Press MFB\nExpected Result: End call of AG1 and back to outgoing call on AG2\nActual Result: Cannot end call of AG1 and back to outgoing call on AG2', '', '2021-04-13 15:05:44'),
(125, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'MultiPoint', 'Voice Assistant', '', '1. DUT turn on and connected to AG1 & AG2\n2. Long press MFB button to start Google Now on AG1\n3. End Google Now on AG1 via AG1\n4. Play music on AG2\n5. Long press MFB button\nExpected Result: Start Google Now on AG2\nActual Result: Start Google Now on AG1', '', '2021-04-13 15:05:44'),
(126, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'LED', 'Charging', '', '1. DUT power off status\n2. 5s long press MFB key + Charging\nExpected Result: The red LED not light when plug in charger.\nActual Result: The RED LED flash once when plug in charger', '', '2021-04-13 15:05:44'),
(127, 'BHC157', 'Wireless', 'Bluetooth', '', '', 'LED', 'Battery', '', '1. DUT turn on and connected to AG1\n2. press power button\nExpected Result: The Battery level LED shall be light red under battery level 15% ~ 0% status when press ppower key\nActual Result: The Battery level LED not light under battery level 15% ~ 0% status when press power key', '', '2021-04-13 15:05:44'),
(128, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', '帳號無法登入刪除APP重新安裝，用原先註冊帳戶登入；註冊新帳號，顯示帳號已存在', '', '2021-04-13 15:05:44'),
(129, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'English副標題誤植為Chinese(simplified)', '', '2021-04-13 15:05:44'),
(130, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', '聽測到一半App會閃退', '', '2021-04-13 15:05:44'),
(131, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'product tour 有點卡頓', '', '2021-04-13 15:05:44'),
(132, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'The app cannot not reconnected the DUT when close App from running apps then relaunch App', '', '2021-04-13 15:05:44'),
(133, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'Firmware update need open dropbox?', '', '2021-04-13 15:05:44'),
(134, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'The Frequency adjustmet cannot adjustmet again when Frequency adjust down to lowest', '', '2021-04-13 15:05:44'),
(135, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'The hearing test can be lunach when HF not connected app.', '', '2021-04-13 15:05:44'),
(136, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'Please choose one mode lsit still exist delete mode when delete one mode.', '', '2021-04-13 15:05:44'),
(137, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'The mode cannot be confirm when delete currect mode then choose one mode.', '', '2021-04-13 15:05:44'),
(138, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'The one mode not exist choose one mode of pop winodws', '', '2021-04-13 15:05:44'),
(139, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'The currect mode not marked under setting/ modes', '', '2021-04-13 15:05:44'),
(140, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'Location detection not esixt of setting page ', '', '2021-04-13 15:05:44'),
(141, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'App', '', '', 'Pop windows:No 為粗體, YES 為細體', '', '2021-04-13 15:05:44'),
(142, 'ALD1704', 'Wireless', 'Bluetooth', 'Android', '', 'APP', '', '', '簡體中文設定頁面大小不一', '[5/10]', '2021-04-19 10:48:15'),
(143, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', '點選後沒有任何功能', '', '2021-04-13 15:05:44'),
(144, 'ALD1704', 'Wireless', 'Bluetooth', '', '', 'APP', '', '', '點選耳機，收合後還是顯示麥克風圖示', '', '2021-04-13 15:05:44'),
(145, 'BHC633', 'Wired', 'USB', '', '', 'Sound', '', '', 'The sound can be heard when volume min via DUT wheels adjust to min.(Testbed volume setting:100)', '', '2021-04-13 15:05:44'),
(146, 'BHC633', 'Wireless', 'Bluetooth', '', '', 'Streaming', '', '', '[Bluetooth mode]The streaming is replay when very long press Bluetooth button under playback and charging', '', '2021-04-13 15:05:44'),
(147, 'BHC633', 'Wireless', 'Bluetooth', 'iOS', '', 'Other', '', '', 'The speaker switch between phone and DUT continue after answer skype incoming call.', '', '2021-04-13 15:05:44'),
(148, 'HDT618', 'Wireless', 'Dongle', '', '', 'Sound', '', '', '[Hotplug][Stereo]The DUT can hear music when volume setting mute then after replug dongle.', '', '2021-04-13 15:05:44'),
(149, 'HDT618', 'Wireless', 'Dongle', '', '', 'Power management', '', '', 'The DUT is power on when power off DUT via press power button not release.', '', '2021-04-13 15:05:44'),
(150, 'HDT618', 'Wireless', 'Dongle', '', '', 'Other', '', '', '[Spotify issue] The music cannot be heard when re-plug the dongle.', '', '2021-04-13 15:05:44'),
(151, 'HDT618', 'Wireless', 'Dongle', '', '', 'Volume', '', '', 'The volume wheels is too sensitive to adjust volume 2% level hardly.', '', '2021-04-13 15:05:44'),
(152, 'HDT618', 'Wireless', 'Dongle', '', '', 'Other', '', '', '[Device Issue]The volume value cannot keep when power off/on DUT.(The volume is changed to default value.)', '', '2021-04-13 15:05:44'),
(153, 'HDT638', 'Wireless', 'Dongle', '', '', 'Enumerate', '', '', '[Name][UI]The product name is xbox controller not \"HyperX CloudX Flight\".', '', '2021-04-13 15:05:44'),
(154, 'HDT818', 'Wired', 'USB controller', '', '', 'Sound', '', '', '[Noise][PC mode] The music noise be heard when hotplug USB cable(Control box side)', '', '2021-04-13 15:05:44'),
(155, 'HDT818', 'Wired', 'USB controller', '', '', 'Sound', '', '', '[Noise][PC mode]  The \"Zi\" noise be heard when hotplug USB cable(Device side)', '', '2021-04-13 15:05:44'),
(156, 'HDT818', 'Wired', 'USB controller', '', '', 'Sound', '', '', '[Noise][PC mode][PS4 mode]  The noise be heard when switch PC/PS4 mode.', '', '2021-04-13 15:05:44'),
(157, 'HDT818', 'Wired', 'USB controller', '', '', 'Volume', '', '', '[Volume][PS mode] [Random]   The volume value cannot keep when mode switch to PC then switch back PS4 mode under PC device', 'Random[3/10]', '2021-04-19 10:48:54'),
(158, 'HDT818', 'Wired', 'USB controller', '', '', 'Sound', '', '', '[Sound][PC mode] [Random] The sound still can be heard when volume set \"0\" then hotplug USB cable(Control box side). When issue happened, the volume adjust via system has no function.  ', 'Random[3/20]', '2021-04-19 10:49:43'),
(159, 'HDT818', 'Wired', 'USB controller', '', '', 'Sound', '', '', '[Noise]The noise can be heard under skype call.', '', '2021-04-13 15:05:44'),
(160, 'HDT818', 'Wired', 'USB controller', '', '', 'Sound', '', '', '[Mic][PC mode] The Mic mute has no function under OSX system.', '', '2021-04-13 15:05:44'),
(161, 'HDT818', 'Wired', 'USB controller', 'Windows7', '', 'Hotplug', '', '', '[Volume][PC mode][Chat][Game]  The volume cannot be adjusted under win7 x64 when hotplug USB cable (Control box side)', 'Random', '2021-04-19 10:50:02'),
(162, 'HDT818', 'Wired', 'USB controller', 'Windows7', '', 'Hotplug', '', '', '[Volume][PC mode][Chat][Game]The volume value cannot keep when hotplug USB cable (Control box side)', 'Random', '2021-04-19 10:50:14'),
(163, 'HDT818', 'Wired', 'USB controller', '', '', 'Other', '', '', '[PS4 mode] The sound cannot heard when GAME_CHAT_KNOB turn to GAME side', '', '2021-04-13 15:05:44'),
(164, 'HDT818', 'Wired', 'USB controller', '', '', 'Other', '', '', '[PS4 mode] The 7.1 surrounded sound has no function.', '', '2021-04-13 15:05:44'),
(165, 'HDT828', 'Wired', 'USB controller', 'OSX', '', 'Sound', '', '', '[Dongle][Sound][Chat/Game]The sound cannot be heard when switch game/chat mode via system preference', '', '2021-04-13 15:05:44'),
(166, 'HDT828', 'Wired', 'USB controller', 'OSX', '', 'Sound', '', '', '[Dongle][Mic Mute]The mic cannot mute via press dongle \"mute\" button under quicktime player \"New Audio Recording\"', '', '2021-04-13 15:05:44'),
(167, 'HDT828', 'Wired', 'USB controller', '', '', 'Sound', '', '', '[3.5mm jack][Mic]The mic cannot be detect when first plug into system only headset then plug mic boom into headset. ', '', '2021-04-13 15:05:44'),
(168, 'HDT828', 'Wired', 'USB controller', '', '', 'Sound', '', '', '[Dongle][Mic]The mic is no function when dongle with type C to A adapter connected to switch then play FORTNITE game.', '', '2021-04-13 15:05:44'),
(169, 'HDT828', 'Wired', 'USB controller', '', '', 'Sound', '', '', 'The L side sound is small than R side when HF via dongle connected to ps4 pro at the beginning.', '', '2021-04-13 15:05:44'),
(170, 'HDT828', 'Wired', 'USB controller', '', '', 'Volume adjustment', '', '', 'The sound cannot be heard when volume adjust to 50 via controller press Vol- button.', '', '2021-04-13 15:05:44'),
(171, 'HDT828', 'Wired', 'USB controller', '', '', 'Sound', '', '', '[Tone][Side-tone] No tone of  Side-tone off via press \"Mute\" button about 5s  of  controller. ', '', '2021-04-13 15:05:44'),
(172, 'HDT838', 'Wired', 'USB', 'Android', 'unsolve', 'Other', 'Enumerate', '', 'biuewbfiuwehytFWEFEWG', '', '2021-04-14 17:22:32'),
(173, 'HDT838', 'Wired', 'USB', 'Windows10', '', 'Volume', 'Sound', '', 'Press the volume key there have any VP(should have \"Beep\" VP)', '5/5', '2021-04-14 17:21:56'),
(174, 'ALD006', 'wireless', 'bluetooth', 'iOS&Android', '', 'sound', 'enerumate', '', 'Change the volume', '5/5', '2021-04-15 15:34:20');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `usercon`
--
ALTER TABLE `usercon`
  ADD PRIMARY KEY (`ID`);

--
-- 資料表索引 `version`
--
ALTER TABLE `version`
  ADD PRIMARY KEY (`ID`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `usercon`
--
ALTER TABLE `usercon`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `version`
--
ALTER TABLE `version`
  MODIFY `ID` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
