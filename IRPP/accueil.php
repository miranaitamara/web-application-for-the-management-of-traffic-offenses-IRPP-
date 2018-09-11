<?php 
session_start();
if(!isset($_SESSION['Conducteur'])&&!isset($_SESSION['admin'])&&!isset($_SESSION['superadmin'])&&!isset($_SESSION['police'])&&!isset($_SESSION['policeadmin']))
    {include './nava.php';}  
    else {include './nav.php';}
?>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
       
        <link href="bootstrap/css/revolution-slider.settings.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="monstyle.css" rel="stylesheet" type="text/css"/>
        <link href="rim.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>
         <?php 

if(!isset($_SESSION['Conducteur'])&&!isset($_SESSION['admin'])&&!isset($_SESSION['superadmin'])&&!isset($_SESSION['police'])&&!isset($_SESSION['policeadmin']))
    {}  
    else {echo'<ol class="breadcrumb"> 
            <li class="active">Accueil</li>
            <li><a href="monespace.php">Mon espace</a></li>
            </ol>';
    
    }
?>

         <!--slider start-->
    <div class="container-fluid srv-slider">
        
	<div class="fullwidthbanner-container">
            <div class="fullwidthbanner">
                <ul>
<!-- THE FOURTH SLIDE -->
                    <li data-transition="3dcurtain-vertical" data-slotamount="1" data-masterspeed="500" class="slide-1">
                        <img src="images/radar_4507178.jpg"/>
                            <div class="caption large_text sft"
                                 data-x="60"
                                 data-y="54"
                                 data-speed="300"
                                 data-start="800"
                                 data-easing="easeOutExpo">
                            <span class="text-primary text-info">IRPP</span></div>


                            <div class="tp-caption text_white sfr"
                                     data-x="30"
                                     data-y="157"
                                     data-speed="600"
                                     data-start="2300"
                                     data-easing="easeOutExpo">
                                 <p><h2>Infraction Routiere Permis à Point.</h2></p>

                            </div>

                            <div class="caption lfl"
                                     data-x="600"
                                     data-y="center"
                                     data-speed="300"
                                     data-start="1400"
                                     data-easing="easeOutExpo">
                                <img src="Sécurité-Routière-vitesse.jpg" width="640px" class="thumb containerBg" alt=""/>
<!--                                <img src="images/desktop_1.png" alt="Image 4">-->
                            </div>
                      


                    
                    </li>
		<li data-transition="papercut" data-slotamount="15" data-masterspeed="300" data-delay="6200">
				
                    <img src="images/radar_4507178.jpg">
				
                            <div class="caption large_text lfl stl"
                                     data-x="30"
                                     data-y="303"
                                     data-speed="300"
                                     data-start="500"
                                     data-easing="easeOutExpo" data-end="5800" 
                                     data-endspeed="300" data-endeasing="easeInSine" >Sécurité Routiére</div>

                            <div class="caption big_white lfl stl"
                                     data-x="30"
                                     data-y="343"
                                     data-speed="300"
                                     data-start="800"
                                     data-easing="easeOutExpo" data-end="6100" data-endspeed="300" data-endeasing="easeInSine" >Tous Responsables...!</div>

                            <div class="caption lft ltb"
                                     data-x="600"
                                     data-y="center"
                                     data-speed="600"
                                     data-start="1100"
                                     data-easing="easeOutExpo" data-end="3100" data-endspeed="600" data-endeasing="easeInSine" >
                                <img src="images/vitesse.jpg" style="width: 500px;" class="thumb containerBg" alt="Image 12"></div>

                            <div class="caption big_white sft stb"
                                     data-x="820"
                                     data-y="300"
                                     data-speed="300"
                                     data-start="1400"
                                     data-easing="easeOutExpo" data-end="3300" data-endspeed="300" data-endeasing="easeInSine" >Attention..!</div>

                            <div class="caption big_black sfb stb"
                                     data-x="820"
                                     data-y="330"
                                     data-speed="300"
                                     data-start="1700"
                                     data-easing="easeOutExpo" data-end="3200" data-endspeed="300" data-endeasing="easeInSine" >La vitesse ça laisse des traces...</div>

                            <div class="caption lft ltb"
                                     data-x="600"
                                     data-y="center"
                                     data-speed="600"
                                     data-start="3600"
                                     data-easing="easeOutExpo" data-end="5600" data-endspeed="600" data-endeasing="easeInSine" >
                                <img src="images/tel.jpg" style="width: 500px;" class="thumb containerBg" alt="Image 12"></div>

                            <div class="caption big_white sft stb"
                                     data-x="820"
                                     data-y="300"
                                     data-speed="300"
                                     data-start="3900"
                                     data-easing="easeOutExpo" data-end="5800" data-endspeed="300" data-endeasing="easeInSine" >Quand vous regardez votre smartphone</div>

                            <div class="caption big_black sfb stb"
                                     data-x="820"
                                     data-y="330"
                                     data-speed="300"
                                     data-start="4200"
                                     data-easing="easeOutExpo" data-end="5700" data-endspeed="300" data-endeasing="easeInSine" >Qui regarde la route?</div>


            </li>

				
			</ul>
			<div class="tp-bannertimer tp-bottom"></div>
		</div>
	</div>
			
	</div>
	<!--slider end-->
        
        <script src="bootstrap/js/jquery-1.11.1.min.js" type="text/javascript"></script>
        <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
       
		
			
       <?php if(isset($_SESSION['ereur']) and $_SESSION['ereur']==1){
     $_SESSION['ereur']=0;
       echo '<script>alert("Email ou mot de passe incorrect  ")</script>';
       
      
  } ?>
<?php include 'footer.php'?>;
    </body>
    
    
</html>

<script src="bootstrap/js/revolutionthumpunch.js" type="text/javascript"></script>
<script src="bootstrap/js/front_index_revolutionslider.js" type="text/javascript"></script>
<script src="bootstrap/js/services.js" type="text/javascript"></script>
