<%-- 
    Document   : modifier
    Created on : Jan 24, 2020, 11:16:54 PM
    Author     : Richard.Sumuni
--%>

<%@page import="webservice.Taxi"%>
<%@page import="Modele.TaxiService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Gestion des taxis</title>
    </head>
    <body>
        <div class ="container mt-4 col-lg-4">
            <div class="card">
                <div class="card-header">
                    <h5>Modifier un taxi</h5>
                </div>
                <%
                    int id = Integer.parseInt((String) request.getAttribute("idtaxi"));
                    TaxiService taxi = new TaxiService();
                    Taxi t = taxi.listeID(id);
                %>
                <div class="card-body">
                    <form action="Controlleur">
                        <label>Id</label>
                        <input type='text' value="<%= t.getId()%>" name='txtid' readonly="" class="form-control">
                        <label>Numero Taxi</label>
                        <input type='text' value="<%= t.getNumeroTaxi()%>" name='txtnumtaxi' class="form-control" >
                        <label>Modele Voiture</label>
                        <input type='text' value="<%= t.getModeleVoiture()%>" name='txtmodelevoiture' class="form-control" >
                        <label>Adresse</label>
                        <input type='text' value="<%= t.getAdresse()%>" name='txtadresse' class="form-control" >
                        <label>Ville</label>
                        <input type='text' value="<%= t.getVille()%>" name='txtville' class="form-control" >
                        <label>Pays</label>
                        <input type='text' value="<%= t.getPays()%>" name='txtpays' class="form-control" >
                        
                        <input type='submit' name='action' value='Actualiser' class="btn btn-success">
                        <a href="Controlleur?action=index">Enregistrer</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
