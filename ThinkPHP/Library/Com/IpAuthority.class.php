<?php

//====================================================
//  FileName:DownLoadsClass.php
//  Summary: �ļ�������
//  Author: zhaoxiace
//  Email:xvpindex@qq.com
//  CreateTime: 2012-10-16
//  LastModifed:
//  copyright (c)2012  [email]xvpindex@qq.com[/email]
//  ʹ�÷�����
//  $download=new download('php,exe,html',false);
//  $attachName = "������";
//  $attachUrl = $_SERVER['DOCUMENT_ROOT']."/Public/Data/PY2LX521002EIYK43DD1@1CCFC.rar";
//  if(!$download->downloadFile($attachName,$attachUrl)))
//  {
//    echo $download->geterrormsg();
//  }
//====================================================

namespace Com;

class IpAuthority extends SqlHelper {

    var $debug = true;
    var $errormsg = '';
    var $Filter = array();
    var $filename = '';
    var $mineType = 'text/plain';
    var $xlq_filetype = array();

    public function __construct($fileFilter = '', $isdebug = true) {
        $this->setFilter($fileFilter);
        $this->setdebug($isdebug);
        $this->setfiletype();
    }

    public function __destruct() {
        
    }

    function setFilter($fileFilter) {
        include($_SERVER["DOCUMENT_ROOT"] . "/co_connection.php");
        $userIp = $_SERVER['REMOTE_ADDR'];
        $per_sql = "SELECT Ip FROM ims_common_permitip WHERE Ip = '$userIp'";
        $per_rows = mysql_fetch_row(mysql_query($per_sql));
        if ($per_rows == 0) {
            if ($_SESSION["authorizeCode"] != "" and $_GET["authorizeCode"] == $_SESSION["authorizeCode"]) {
                
            } else {
                echo '<div class="no_permitIp">
          <br>����IP��ַ��' . $userIp . '<br>�Բ�����δʹ����Ȩ��Χ�ڵĵ��Ե�½��<br>��ʹ��Email��ȡ��Ȩ��½��ַ����ϵ��010-57968663
          <form name="EmailForm" method="POST" action="/Public/Plugins/Email/EmailSend.php">
          ����Email��ַ��<input type="text" name="Email" value="" />
          <input type="submit" name="getAuthorize" value="��ȡ��Ȩ��ַ" onclick="return isEmail()" />
          </form></div>';
                exit();
            }
        }
    }

    public function __set($propertyName, $propertyValue) {
        $this->$propertyName = $propertyValue;
    }

    public function __get($propertyName) {
        if (isset($this->$propertyName)) {
            return $this->$propertyName;
        } else {
            return null;
        }
    }

}

?>
