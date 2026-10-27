sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'incidents.incidentmanage',
            componentId: 'Incidents_attachmentsObjectPage',
            contextPath: '/Incidents/attachments'
        },
        CustomPageDefinitions
    );
});