## Dev/Prod parity example
This is a simple CloudFormation example to showcase how to
use the same template for all environments to support dev/prod
parity.

### Deploy
To setup an environment, use the `setup` script
```sh
$ cloudformation/setup <environment>
```
Valid arguments are `dev`, `staging` and `prod`.
The corresponding Beanstalk environment will be setup.
A Beanstalk application is also created to associate the
environments (it holds no code).

### Destroy / Cleanup
To tear down an environment, use the `destroy` script:
```sh
$ cloudformation/destroy <environment>
```
Valid arguments again are `dev`, `staging` and `prod`.
The script will ask you if you want to remove the
application as well.

### hints
verfiy that you are connetc to the correct aws account (Prod or Dev)
```sh
$ aws sts get-caller-identity
```
monitor the cloud formation script
```sh
$ aws cloudformation describe-stack-events --stack-name mk999t-prod-stack
```
