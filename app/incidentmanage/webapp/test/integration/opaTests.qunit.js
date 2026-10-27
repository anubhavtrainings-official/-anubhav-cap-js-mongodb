sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'incidents/incidentmanage/test/integration/FirstJourney',
		'incidents/incidentmanage/test/integration/pages/IncidentsList',
		'incidents/incidentmanage/test/integration/pages/IncidentsObjectPage',
		'incidents/incidentmanage/test/integration/pages/Incidents_attachmentsObjectPage'
    ],
    function(JourneyRunner, opaJourney, IncidentsList, IncidentsObjectPage, Incidents_attachmentsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('incidents/incidentmanage') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheIncidentsList: IncidentsList,
					onTheIncidentsObjectPage: IncidentsObjectPage,
					onTheIncidents_attachmentsObjectPage: Incidents_attachmentsObjectPage
                }
            },
            opaJourney.run
        );
    }
);