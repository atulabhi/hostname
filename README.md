# hostname
An App to display host name on which it is running.

If we run on a VM it will display hostname of the VM and when run as a docker conatiner it will show its ID.

Output will be visible on http://localhost:8081

# Run
**Running on VM**

 ```go run main.go```
 
 **Running docker Image**
 
 ```docker run --host worker-1 -p 8081:8081 <image name >```
