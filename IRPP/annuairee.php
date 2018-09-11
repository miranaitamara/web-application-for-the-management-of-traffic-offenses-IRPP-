<?php 
session_start();
if(!isset($_SESSION['Conducteur'])&&!isset($_SESSION['admin'])&&!isset($_SESSION['superadmin'])&&!isset($_SESSION['police'])&&!isset($_SESSION['policeadmin']))
    {include './nava.php';}  
    else {include './nav.php';}
?>
<html>
    <head>
        <meta charset="utf-8">
        <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/font-awesome.css" rel="stylesheet" type="text/css"/>
        <link href="Bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="monstyle.css" rel="stylesheet" type="text/css"/>
        <title>Annuaire</title>
    </head>
<body>
   
    <form>
  <input type="button" value="Retour" onclick="history.go(-1)">
</form>
    <div class="container"> 
        <table class="table table-responsive">
            <thead>
         
                <tr>
                    <td> Logo</td>
                   <td>Nom Agence</td>
                    <td class="col-md-2"> Téléphone </td>
                      <td>Fax </td>
                      <td> Adresse</td>
                     <td class="col-md-3">Site Web</td>
                      
                </tr> 
                
            </thead>
            <tbody>
             <tr>
                    <td>   <img src="images/CIAR.PNG" alt=""/></td>
                    <td> Compagnie internationale <br>d'Assurance  et de Réassurance</td>
                    <td> <span class="glyphicon glyphicon-phone-alt"></span> 021 69 15 97  </td>
                    <td> 021.69.25.27   </td>
                    <td>Alger - 27, rue des frères Belhafidh-le paradou-Hydra</td>
                    <td><a>www.laciar.com</a></td>
                </tr>
                <tr>
                    <td>  <img src="images/GAM.PNG" alt=""/></td>
                    <td> GENERALE ASSURANCE MEDITERANIENNE</td>
                    <td> <span class="glyphicon glyphicon-phone-alt"></span> 021.68.72.09</td>
                    <td> 021.69.72.23</td>
                    <td>Alger - 18, Hai-Ell-Badr, Ex appreval-kouba</td>
                    <td><a><span class="glyphicon glyphicon"></span>www.gam-assurance-dz.com</a></td>
                </tr>
                <tr>
                    <td> <img src="images/CNA.PNG" alt=""/></td>
                    <td>CONSEIL NATIONAL DES ASSURANCES</td>
                    <td> <span class="glyphicon glyphicon-phone-alt"></span> 021 69 10 41</td>
                    <td> 021 69 15 24</td>
                    <td>Alger - 30, Lotissement du Val d'Hydra, Lot N°50-Hydra </td>
                    <td><a>www.cna.dz</a> </td>
                </tr>
                <tr>
                    <td><img src="images/2a.PNG" alt=""/></td>
        
                    <td> L'ALGERIENNE DES ASSURANCES</td>
                    <td> <span class="glyphicon glyphicon-phone-alt"></span> 021.47.68.72 </td>
                    <td> 021.47.65.73</td>
                    <td>Alger - 01, rue Tripoli - 16003 Hussein Dey</td>
                    <td><a>www.assurance-2a.com</a> </td>
                </tr>
                   
            </tbody>
        </table>
    </div>
 <?php include 'footer.php'; ?>  
<!---------------------------js/jquery------------>
<script src="bootstrap/js/jquery.js" type="text/javascript"></script>
<script src="bootstrap/js/jquery-2.1.1.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

</body>
</html>

