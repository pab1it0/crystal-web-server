const cloud = require("@pulumi/cloud");

let service = new cloud.Service("pulumi-crystal-server", {
    containers: {
        nginx: {
            build: ".",
            memory: 128,
            ports: [{ port: 80 }],
        },
    },
    replicas: 2,
});

exports.url = service.defaultEndpoint.apply(e => `http://${e.hostname}`);