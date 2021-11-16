
<?php
//require "index.html";
$db = new mysqli('localhost', 'root', '', 'happygrades');

if(!$db){
    die("Error: Failed to connect to database!");
}
$password=$_POST['password'];
$id=$_POST['id'];
/*
mysqli_query($db, "INSERT INTO `person`(`Name`, `ID`, `email`, `password`, `state`) VALUES(
    '$name', '$id', '$email', '$password', '$name')");*/
//SQL Query
$query = mysqli_query($db,"SELECT * FROM student WHERE 
     ID='$id' AND password ='$password'");
$query2 = mysqli_query($db,"SELECT * FROM teacher WHERE 
     ID='$id' AND password ='$password'");
$query2 = mysqli_query($db,"SELECT * FROM teacher WHERE 
     ID='$id' AND password ='$password'");
$numrows= mysqli_num_rows($query);

$numrows2= mysqli_num_rows($query2);
$query3 = mysqli_query($db,"SELECT * FROM assistant WHERE 
     ID='$id' AND password ='$password'");
$numrows3= mysqli_num_rows($query3);
if($numrows>0)
{
    header("Location: http://localhost/SP/index.html");

   // echo"you are student";

}
elseif($numrows3>0)//مساعد
{
    header("Location: https://www.google.com/search?q=histogram+is+normal+distribution+in+this+histogram&oq=hi&aqs=chrome.0.69i59l3j46i512j69i60l4.784j0j7&sourceid=chrome&ie=UTF-8");



}
elseif ($numrows2>0)//معلم
{
    header("Location:http://localhost/SP/teacherPage.php");
    session_start();

    $_SESSION['tid'] = $id;

}
else{

    header("Location: http://localhost/SP/index.html");

}


$db->close();
?>









