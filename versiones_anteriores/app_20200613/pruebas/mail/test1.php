<?php
$to       = 'gab.perez.py@gmail.com';
$subject  = 'Naguarabit - Testing send mail';
$message  = 'Hi, you just received an email using sendmail!';
$headers  = 'From: naguarabit@gmail.com' . "\r\n" .
            'MIME-Version: 1.0' . "\r\n" .
            'Content-type: text/html; charset=utf-8';
if(mail($to, $subject, $message, $headers))
    echo "Email sent";
else
    echo "Email sending failed";
?>