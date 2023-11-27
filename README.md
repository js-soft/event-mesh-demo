# Event-Mesh demo application

A demo application to connect a SAP system with a message broker, like SAP Event Mesh, using a custom event.

SAP channel and message broker setup are still required, as is creating an Event Consumption Model with the [Event Specification File](customRapEventAsyncApi.json) (because abapGit can't deal with those). The other development objects generated alongside are present though.

Use the RAP application in the service binding to create an entry, which is then transported via the event route into the ZCUSTOM_RAPEVENT table.

