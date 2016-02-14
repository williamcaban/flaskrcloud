FLASKR CLOUD
============

Sample cloud native application using Flaskr with CouchDB backend.

The intended deployment are containers with the following design: 


```

+----+   +--------+            +---------+
| LB |---| Flaskr |-+  ------- | CouchDB |-+
+----+   +--------+ |+         +---------+ |-+
           +--------+|            +--------+ |
             +-------+             +---------+

```

How to install dependencies?

```
$ virtualenv venv
$ source venv/bin/activate
$ pip install -r requirements.txt
```

Use the software as described bellow. To deactivate the virtualenv environment run

```
$ deactivate
```



~ What is Flaskr Cloud?

  A cloud native minimal blog application.

~ How do I use it?

    1. edit the configuration in the flaskr.py file or
    export an POD_SETTINGS environment variable
    pointing to a configuration file.

    2. initialize the database with this command:

        flask --app=flaskr initdb

    3. now you can run flaskr:

        flask --app=flaskr run

        the application will greet you on
        http://localhost:5000/

~ Testing?

    Run the `test_flaskr.py` file to see if the tests pass.


ORIGINAL SOURCES
================

This code use software or libraries from the following projects:
- Flaskr: https://github.com/mitsuhiko/flask/tree/master/examples/flaskr
- Flaskr with CouchDB: https://gist.github.com/webwurst/1985703

COPYRIGHT
=========

Copyright (c) 2016 William Caban @williamcaban

This work is licensed under the Creative Commons Attribution 4.0 International License.
To view a copy of this license, visit http://creativecommons.org/licenses/by/4.0/.

Flaskr:
 - Copyright (c) 2010-2015 by Armin Ronacher.
 - License: BSD

WARRANTIES
==========

Licensor offers this Material as-is and as-available, and makes no representations or warranties of any kind concerning the Licensed Material, whether express, implied, statutory, or other. This includes, without limitation, warranties of title, merchantability, fitness for a particular purpose, non-infringement, absence of latent or other defects, accuracy, or the presence or absence of errors, whether or not known or discoverable.

In no event will the Licensor be liable to You on any legal theory (including, without limitation, negligence) or otherwise for any direct, special, indirect, incidental, consequential, punitive, exemplary, or other losses, costs, expenses, or damages arising out of this Public License or use of the Licensed Material, even if the Licensor has been advised of the possibility of such losses, costs, expenses, or damages.
