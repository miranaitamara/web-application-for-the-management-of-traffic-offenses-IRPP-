<?php
session_start();
$_SESSION['Conducteur'];
$_SESSION['police'];
$_SESSION['admin'];
$_SESSION['superadmin'];
$_SESSION['policeadmin'];
$_SESSION['espace'];
?> 
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>  
<?php     
$bdd = new PDO('mysql:host=localhost;dbname=ifraroute', 'root', '' );                                   
$reponce=$bdd->query('SELECT * FROM utilisateur ');
 
$bool=FALSE;
while($donnees = $reponce->fetch() and $bool==FALSE)
{
if( $_POST['mail'] == $donnees['mail'] &&$_POST['motpass']== $donnees['motdepass'])
    {
// echo 'vous etes connecter';
  
$bool=TRUE;
 
$rol=$donnees['role']; 
$_SESSION['password']=$donnees['motdepass'];
switch ($rol){
//************************************        
       case Conducteur:
 $_SESSION['Conducteur']="AUTH : OK";
 $_SESSION['nom']=$donnees['nom'];
 $_SESSION['prenom']=$donnees['prenom'];
 $_SESSION['id']=$donnees['id'];
 $_SESSION['photo']=$donnees['photo'];
 $_SESSION['espace']= '1';
 header("location:espaceconducteur.php");
           break;
//************************************                
       case Police:
$_SESSION['police']="AUTH : OK";
$_SESSION['nom']=$donnees['nom'];
$_SESSION['prenom']=$donnees['prenom'];
$_SESSION['id']=$donnees['id'];
$_SESSION['photo']=$donnees['photo'];
$_SESSION['espace']='2';
header("location:espacepolice.php");
break;
//***************************************************
       case Administrateur:
$_SESSION['admin']="AUTH : OK";
$_SESSION['nom']=$donnees['nom'];
$_SESSION['prenom']=$donnees['prenom'];
$_SESSION['id']=$donnees['id'];
$_SESSION['photo']=$donnees['photo'];
$_SESSION['espace']='3';
header("location:espaceAdmin.php");
break; 
//************************************
        case Superadmin:
$_SESSION['superadmin']="AUTH : OK";
$_SESSION['nom']=$donnees['nom'];
$_SESSION['prenom']=$donnees['prenom'];
$_SESSION['id']=$donnees['id'];
$_SESSION['photo']=$donnees['photo'];
$_SESSION['espace']='4';
header("location:espacesuperAdmin.php");
break; 
//**************************************
       case Policeadmin:
$_SESSION['policeadmin']="AUTH : OK";
$_SESSION['nom']=$donnees['nom'];
$_SESSION['prenom']=$donnees['prenom'];
$_SESSION['id']=$donnees['id'];
$_SESSION['photo']=$donnees['photo'];
$_SESSION['espace']='5';
header("location:espacepoliceadmin.php");
break;            
   } 
}
 
}
if ($bool==FALSE){
    $_SESSION['ereur']=1;
    header("location:accueil.php");
}
?>
</body>
</html>
