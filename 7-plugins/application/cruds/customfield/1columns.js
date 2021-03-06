CRUD_dragon_customfield = {};
DSON.keepmerge(CRUD_dragon_customfield, CRUDDEFAULTS);
DSON.keepmerge(CRUD_dragon_customfield, {
    table: {
        columns: {
            id: {
                visible: false,
                visibleDetail: false,
                export: false,
                exportExample: false
            },
            name: {
                label: "name",
                shorttext: 80
            },
            variable: {
                label: "Variable",
                shorttext: 80
            },
            type: {
                label: "Type",
                shorttext: 80
            },
            description: {
                label: "description",
                sortable: false,
                shorttext: 60,
                null: "<span class='text-grey'>[NULL]</span>"
            }
        }
    }
});