# cibDigitalAssessmentAPI

1 Setup instructions

*  JDK 11/17/21.0.4
*  Maven 3.6.9 / any latest
*  Git
*  Intellij ( Install pluggin called "karate 2.2.0") 2 How to run the tests
*  jenkins.war
*  Github access

2 How to run the tests

Tests can be run locally and on Jenkins

*  Locally
  *  Open this project using Intellij (Community/ultimate)
  *  Let your project build completely, you can confirm this by going to the Main menu > Build > Build Project
  *  To run one single test:
    *  Go to src > test > java > runners > petRunner.java and pick any method to run, whether it's a smoke or regression. I just use two methods to show that execution can happen in many ways
*  To run parallel test:
  *  Go to src > test > java > runners > parallelTestRunner.java and run the method on loc 11 and this will run and after produce a report for you
*  Reports
  * This will be generated immediatelly after the execution is done. After execution you will find the URL on the console/terminal that you will have to copy and paste it to the browser to see the results 

*  Jenkins
  * There's two builds i've created on Jenkins for this project:
    *  Locally (cibDigitalAssessmentAPI_locally)
      * This will run the project locally if you have jenkins configured and running to allow jobs (Jenkins and Intellij integration)
    * Remote (cibDigitalAssessmentAPI_remote)
      *  This will run the project locally as well but this is an integration between Github and Jenkins and it does require you to have Jenkins server running
    * Note : There are couple of jobs already ran and you can open one maven project created and do your own build and see the stats through the published report    

3 An overview of your project structure

  *  This karate project is designed to automate API testing for our application backend on Petfinder. The primary goal is to ensure API stability, correctness and performance across different environments,     reducing manual efforrt and increasing test coverage.

  *  Project Structure and Architecture
    * The project follows a well-organized directory structure:
      * features/PetfinderCollection : Contails all Gherkin feature files describing various API test scenarios
      * runners : Contains runner classess for executing tests in parallel or single execution
      * Toke : This stills falls under features but i just separated them for better view but it's just a feature that contains token credentials and that are later called inside PetfinderCollection
      * utils : This refers to the utility scripts and configuration files such as karate-configs.js
      * target : Generated reports and test artifacts are stored inside here during runtime.
      * gitignore : This file contains those items i don't want to keep on my cloud repo
      * pom.xml : This is the driver of depencencies that will make the project to be plug and play on different machines
        
4 Any assumptions or decisions made

  * Yes, they are some with regards to this tool. I went for this tool because of how it can simplify the process of serialization and desirialization with RestAssured especially for some of this long response api

5 List of tools and resources used

  * IDE (Intellij)
  * Karate plugin 
