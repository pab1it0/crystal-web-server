# crystal-web-server

A Pulumi  app to deploy simple Crystal Lang server on AWS Fargate container

## Installation

1. Install [Pulumi](https://pulumi.io/quickstart/install.html)
2. Configure [AWS Credentials](https://pulumi.io/quickstart/aws/setup.html)
3. Install modules 
```bash
$ npm install
```
4. Configure the region you want to deploy the stack to (Default: us-east-1)
```bash
$ pulumi config set aws:region <region>
```

## Usage

Simply run `$ pulumi up` and let Pulumi do the heavy lifting.
It may take up to 15 min for Pulumi to deploy and provision the ECS cluster.
After it's done, view the endpoint URL and run curl.

## Contributing

1. Fork it (<https://github.com/pasha1986/crystal-web-server/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Pavel Shklovsky](https://github.com/pasha1986) - creator and maintainer
