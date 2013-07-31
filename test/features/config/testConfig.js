exports['remote'] = { host: process.env.WDHOSTNAME || 'ondemand.saucelabs.com'
                    , port: process.env.WDPORT || 80
                    , username: process.env.WDUSERNAME
                    , accessKey: process.env.WDPASSWORD
                    }

exports['desired'] = { browserName: 'Chrome'
                     , tags: ['examples']
                     , name: 'This is an example node-bdd test'
                     }