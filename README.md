# solidity-jar-builder
Sample Maven project showing how to generate Java classes from a smart contract written in Solidity.

## Prerequisites

 - Install [Java](https://java.com/en/download/help/windows_manual_download.xml)
 - Install [Maven](https://maven.apache.org/guides/getting-started/windows-prerequisites.html)
 
 Confirm prerequisites by running a version test using this command line before continuing:
 
 ```
mvn -version
Apache Maven 3.5.2 (138edd61fd100ec658bfa2d307c43b76940a5d7d; 2017-10-18T09:58:13+02:00)
Maven home: /usr/local/Cellar/maven/3.5.2/libexec
Java version: 1.8.0_162, vendor: Oracle Corporation
Java home: /Library/Java/JavaVirtualMachines/jdk1.8.0_162.jdk/Contents/Home/jre
Default locale: en_GB, platform encoding: UTF-8
OS name: "mac os x", version: "10.13.4", arch: "x86_64", family: "mac"
```

## Operation

 - Edit the pom.xml setting the __artifactId__ and __version__ to values of your choice:
 
 ```xml
    <artifactId>mycontract</artifactId>
    <version>1.0</version>
```
 - Copy one or more valid solidity contract files to src/main/resources
 - Run the script/bat file __buildjar.sh__
 
 Once the process is complete you will find a Java archive (.jar) file containing the classes generated from the transpilation of the solidity contracts in ./target
 The name of the file will be comprised of the artifactId and version given above:  
 
 ```
 mycontract-1.0.jar
 ```

### Troubleshooting

Old version of solc installed?  If your solidity compilation is failing with errors that suggest it's using an older version of solidity compiler than specified in you .sol file(s),
check the version of solc installed:

```shell script
solc --version
solc, the solidity compiler commandline interface
Version: 0.4.20+commit.3155dd80.Darwin.appleclang
``` 

If required, upgrade it:

```shell script
brew upgrade solidity
```
 
