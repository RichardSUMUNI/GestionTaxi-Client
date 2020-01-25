<%-- 
    Document   : ajouter
    Created on : Jan 24, 2020, 10:19:19 PM
    Author     : Richard.Sumuni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Gestion des taxis</title>
    </head>
    <body>
        <div class="container mt-4">
            <div class = "card-info bg-info text-center">
                <br/>
                <h4>PROJET DE DEVELOPPEMENT D'UNE APPLICATION REPARTIE DE GESTION DES TAXIS</h4>
                <h5>Esis, Salma 2020</h5>
                <h6>Par SUMUNI BIN KIVIRA Richard</h6><br/>
            </div>
        </div>
        <div class ="container mt-4">
            <div class="card">
                <div class="card-header">
                    <h5>Ajouter nouveau taxi</h5>
                </div>
                <div class="card-body">
                    <form action="Controlleur">
                        <label>Numero Taxi</label>
                        <input type='text' name='txtnumtaxi' class="form-control">
                        <label>Modele Voiture</label>
                        <input type='text' name='txtmodelevoiture' class="form-control">
                        <label>Adresse</label>
                        <input type='text' name='txtadresse' class="form-control">
                        <label>Ville</label>
                        <input type='text' name='txtville' class="form-control">
                        <label>Pays</label>
                        <input type='text' name='txtpays' class="form-control">
                        <input type='submit' name='action' value='Ajouter'>
                        <a href="Controlleur?action=index">Enregistrer</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
