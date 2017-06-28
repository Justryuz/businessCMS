<?php
define('inc_access', TRUE);

session_start();

//redirect back to contact form or home page
$redirectPage = "../../contact.php?loc_id=" . $_GET['loc_id'] . "&msgsent=thankyou#contactForm";
//if an error occurs
$errorPage = "../../contact.php?loc_id=" . $_GET['loc_id'] . "&msgsent=error#contactForm";

$name = safeCleanStr($_POST['name']);
$email_address = safeCleanStr($_POST['email']);
$phone = safeCleanStr($_POST['phone']);
$message = safeCleanStr($_POST['message']);
$sendTo = safeCleanStr($_POST['sendToEmail']);

if (!empty($_POST) && $_POST['referrer'] == $_SESSION['unique_referrer']) {
    // Check for empty fields
    if (empty($_POST['name']) ||
        empty($_POST['email']) ||
        empty($_POST['phone']) ||
        empty($_POST['message']) ||
        !validateEmail($_POST['email'])
    ) {
        header("Location: $errorPage");
        echo "<script>window.location.href='$errorPage';</script>";
        return false;
    } else {
        // Create the email and send the message
        $email_subject = "Website Contact Form:  $name";
        $email_body = "You have received a new message from your website contact form.\n\n" . "Here are the details:\n\nName: $name\n\nEmail: $email_address\n\nPhone: $phone\n\nMessage:\n$message";
        $headers = "From: $email_address\n"; // This is the email address the generated message will be from. We recommend using something like noreply@yourdomain.com.
        $headers .= "Reply-To: $email_address";
        mail($sendTo, $email_subject, $email_body, $headers);
        header("Location: $redirectPage");
        echo "<script>window.location.href='$redirectPage';</script>";
        return true;
    }
} else {
    die('Direct access not permitted');
}
?>