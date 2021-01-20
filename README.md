# dev/prod parity demo
This is a simple CloudFormation example to showcase how to
use the same template for all environments to support dev/prod
parity.

To setup an environment, use the `setup` script
```
cd cloudformation
./setup <environment>
```
Valid arguments are `dev`, `staging` and `prod`.
The corresponding Beanstalk environment will be setup.
A Beanstalk application is also created to associate the
environments (it holds no code).

To tear down an environment, use the `destroy` script:
```
cd cloudformation
./destroy <environment>
```
Valid arguments again are `dev`, `staging` and `prod`.
The script will ask you if you want to remove the
application as well.

