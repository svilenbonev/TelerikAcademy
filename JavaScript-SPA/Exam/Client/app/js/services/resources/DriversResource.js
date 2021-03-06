/* global app */
app.factory('DriversResource', function ($resource, authorization, baseServiceUrl) {
    'use strict';
    var headers = authorization.getAuthorizationHeader();
    var DriversResource = $resource(baseServiceUrl + '/api/drivers/:id', null, {
        'public': {
            method: 'GET',
            isArray: true
        },
        'request': {
            method: 'GET',
            isArray: true,
            headers: headers
        },
        'byId': {
            method: 'GET',
            params: {
                id: '@id'
            },
            isArray: false,
            headers: headers
        }
    });

    return {
        public: function () {
            return DriversResource.public();
        },
        all: function (request) {
            return DriversResource.request(request);
        },
        byId: function (id) {
            return DriversResource.byId({
                id: id
            });
        }
    };
});