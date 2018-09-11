<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        // put your code here
        include './nava.php';
        ?>
        
        
<div class="row margin-bottom">
                        <div class="col-md-3">
                            <select id="type_rr" name="type_rr" class="form-control" required="required" onchange="get_liste_rr(this.value);
                                        vider_liste();
                                        multin_ns(this.value);"> 
                                <option value="" selected="selected" disabled="true">Choisir le type de relation</option>                            
                                <option value="0" >multi-noyaux</option>                            
                                <option value="1" >noyau-satellite</option>                            
                            </select>  
                        </div> 
                        <div class="col-md-5">
                            <select id="rr" name="rr" class="form-control" required="required" onchange="get_liste_att(this.value);"> 
                                <option value="" selected="selected" disabled="true">Relations rhétoriques</option>                            
                            </select>  
                        </div> 
                        <div class="col-md-4">
                            <select id="att_rr" name="att_rr" class="form-control" required="required" onchange="get_liste_entites(0);"> 
                                <option value="" selected="selected" disabled="true">Qualificateur de la relation</option>                            
                            </select>  
                        </div>          
                    </div>    
					
			<script type="text/javascript">		
	function get_liste_rr(type_rr) {
            $.ajax({
                url: "index3.php?action=g_liste_rr&type_rr=" + type_rr,
                dataType: "html",
                success: function (liste) {
                    $('#rr').empty().html(liste);
                },
                error: function (xhr, desc, err) {
                    console.log(xhr);
                    console.log("Details: " + desc + "\nError:" + err);
                }
            });
        }

        function multin_ns(type) {
            if (type === '0') {
                $.ajax({
                    url: "index3.php?action=g_liste_entites",
                    dataType: "html",
                    success: function (liste) {
                        $('#noyaux').empty().html(liste).multiselect({
                            disableIfEmpty: true,
                            nonSelectedText: 'Choisir les noyaux.',
                            enableClickableOptGroups: true,
                            buttonWidth: '100%',
                            buttonClass: 'form-control',
                            maxHeight: 300,
                            enableFiltering: true,
                            filterPlaceholder: 'Rechercher',
                            includeSelectAllOption: false,
                            selectAllText: ' Tous',
                            allSelectedText: 'Tous les entités ont été séléctionné ...'
                        });
                    },
                    error: function (xhr, desc, err) {
                        console.log(xhr);
                        console.log("Details: " + desc + "\nError:" + err);
                    }
                });
                $('#multin').removeClass('hidden');
                $('#ent1').addClass('hidden');
                $('#ent2').addClass('hidden');
                $('#orb').addClass('hidden');
            } else {
                $('#multin').addClass('hidden');
                $('#ent1').removeClass('hidden');
                $('#ent2').removeClass('hidden');
                $('#orb').removeClass('hidden');
            }
        }

        function get_liste_att(rr) {
            $.ajax({
                url: "index3.php?action=g_liste_rr&rr=" + rr,
                dataType: "html",
                success: function (liste) {
                    $('#att_rr').empty().html(liste);
                },
                error: function (xhr, desc, err) {
                    console.log(xhr);
                    console.log("Details: " + desc + "\nError:" + err);
                }
            });
        }
		
		 </script>
                 <?php include 'footer.php'?>;
    </body>
</html>
