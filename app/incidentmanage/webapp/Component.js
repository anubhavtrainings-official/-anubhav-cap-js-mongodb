sap.ui.loader.config({ paths: { 'anubhav/attachments': sap.ui.require.toUrl('incidents/incidentmanage') + '/anubhav/attachments/ui5' } });

sap.ui.define(
    ["sap/fe/core/AppComponent"],
    function (Component) {
        "use strict";

        return Component.extend("incidents.incidentmanage.Component", {
            metadata: {
                manifest: "json"
            }
        });
    }
);