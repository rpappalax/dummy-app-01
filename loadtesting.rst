
    
Loadtesting
=========================


Summary
------------------------------
There are countless  tools and approaches to loadtesting a web service.  In this document, we outline a set of tools and methods we’ve standardized on for API, load and scalability testing web services at Mozilla.

This document covers the following:


**Objectives**

Design and create loadtests (see: Writing a Loadtest <writing-a-loadtest_>) to ensure our web services are both:

1. reliable 
 - API works as expected at all times
2. scalable 
 - services can be successfully scaled up or down (in AWS) to respond to changes in web traffic without minimal impact to reliability of service.

Execute those tests to verify web services in each of the following environments:


1. `DEV`
 - Perform short-running smoke tests with a nominal load against API
 - purpose: enables Devs to quickly know if a commit to master creates a regression
 - note: these tests are performed against a temporary docker instance of the web service and shouldn't exceed 30 seconds in duration
2. `STAGE`
 - Perform longer-running load tests with larger loads against API
 - Enables Dev, Ops and QA to know if a PRODUCTION-like service is both reliable and scalable after deployment
 - note: these tests are performed against a PRODUCTION-like web service deployed to STAGE and may run as long as 30 minutes
3. `PRODUCTION`
  - Perform short-running smoke tests with a nominal load against API
  - Ensures API is reliable  after deployments to PRODUCTION
  - NOTE: never do scalability loadtesting against a production service! 


.. _writing-a-loadtest:

Writing a Loadtest
------------------------------

There are a number of tools and frameworks available in which to write loadtest scripts.

For nearly all of our loadtesting, we use the `python molotov framework <https://molotov.readthedocs.io/>` created by `Tarek Ziade <https://github.com/tarekziade/>`.

Molotov uses aiohttp which allows you to easily spawn, throttle and control multiple attacks from one host.  For testing of smaller services, a Molotov test can even be run without employing an attack cluster, though we do use another tool called [ardere](https://github.com/loads/ardere) 
- Creating and hosting a docker image of your test on dockerhub
Link to Molotov 

**Checklists**

link off to dev checklist

**Loadtest Execution**

- Simple API test 
- Ad-hoc execution
- Execution via Jenkins at service deployment time


Loadtest Types
------------------------------






Monitoring 
----------
(link to Mana for Datadog examples)



xxx Molotov_.  ixxxxx
xxx Ardere_.  ixxxxx


.. see also::

   `Mozilla Services on GitHub <https://github.com/mozilla-services/>`_
      Mozilla Services' organization account on GitHub.

.. _Molotov: https://github.com/loads/molotov
.. _Ardere: https://github.com/loads/ardere

