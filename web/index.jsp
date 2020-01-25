<%-- 
    Document   : index
    Created on : Jan 24, 2020, 8:25:41 PM
    Author     : Richard.Sumuni
--%>

<%@page import="webservice.Taxi"%>
<%@page import="Modele.TaxiService"%>
<%@page import="java.util.List"%>

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
                    <a href="Controlleur?action=ajouter" class ="btn btn-primary">Nouveau Taxi</a>
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Numero Taxi</th>
                                <th>Modele Voiture</th>
                                <th>Adresse</th>
                                <th>Ville</th>
                                <th>Pays</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                TaxiService taxi = new TaxiService();
                                List<Taxi> donnees = taxi.liste();
                                for(Taxi t : donnees)
                                {    
                            %>
                            <tr>
                                <td><%= t.getId() %></td>
                                <td><%= t.getNumeroTaxi()%></td>
                                <td><%= t.getModeleVoiture()%></td>
                                <td><%= t.getAdresse()%></td>
                                <td><%= t.getVille()%></td>
                                <td><%= t.getPays()%></td>
                                <td>
                                    <a href="Controlleur?action=modifier&id=<%= t.getId() %>" class="btn btn-warning">Modifier</a>
                                    <a href="Controlleur?action=eliminar&id=<%= t.getId() %>" class="btn btn-danger">Supprimer</a>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>

                </div>
            </div>
        </div>
    </body>
</html>
