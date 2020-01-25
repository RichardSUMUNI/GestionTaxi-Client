/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modele;

import webservice.Taxi;

/**
 *
 * @author Richard.Sumuni
 */
public class TaxiService {

    public TaxiService() {
    }

    public java.util.List<webservice.Taxi> liste() {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.liste();
    }

    public String ajouter(java.lang.String numeroTaxi, java.lang.String modeleVoiture, java.lang.String adresse, java.lang.String ville, java.lang.String pays) {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.ajouter(numeroTaxi, modeleVoiture, adresse, ville, pays);
    }

    public Taxi listeID(int id) {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.listeID(id);
    }

    public String actualiser(int id, java.lang.String numeroTaxi, java.lang.String modeleVoiture, java.lang.String adresse, java.lang.String ville, java.lang.String pays) {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.actualiser(id, numeroTaxi, modeleVoiture, adresse, ville, pays);
    }

    public Taxi supprimer(int id) {
        webservice.Services_Service service = new webservice.Services_Service();
        webservice.Services port = service.getServicesPort();
        return port.supprimer(id);
    }
    
    
}
