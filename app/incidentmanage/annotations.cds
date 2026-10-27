using HelpdeskService as service from '../../srv/incident-service';

annotate HelpdeskService.Incidents with @(UI : {

    HeaderInfo: {
        TypeName: 'Incident',
        TypeNamePlural: 'Incidents',
        Title: { Value : title },
        Description: {Value : priority.name}
    },
    SelectionFields: [ priority_code, createdBy ],
    LineItem : [
        {Value: title},
        {Value: priority_code},
        {Value: createdBy},
        {Value: createdAt}
    ],
    Facets: [{
        $Type: 'UI.ReferenceFacet',
        ID: 'General',
        Label: 'General',
        Target: '@UI.FieldGroup#General'
    }],
    FieldGroup #General: {
        Data: [
            {Value: title},
            {Value: priority_code},
            {Value: description}
        ]
    }
}) {
    title  @title:'Title';
    description @title: 'Description' @UI.MultiLineText;
    priority @title: 'Priority' @Common: {
        Text: priority.name,
        TextArrangement: #TextOnly,
        ValueListWithFixedValues,
        ValueList : {
            CollectionPath: 'Priorities',
            Parameters: [
                {$Type: 'Common.ValueListParameterInOut',
                 LocalDataProperty: priority_code,
                 ValueListProperty: 'code'},
                {$Type: 'Common.ValueListParameterDisplayOnly',
                 ValueListProperty: 'name'} 
            ]
        }
    }
}