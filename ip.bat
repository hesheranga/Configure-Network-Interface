@echo off
ipconfig
wmic nic where "NetConnectionStatus=2" get NetConnectionID

SET /p Interface_Name=Interface Name :
SET /p ip_address=ip :

netsh interface ipv4 set address name="%Interface_Name%" static %ip_address% <Subnet> <gateway>
netsh interface ipv4 set dns "%Interface_Name%" static <DNS 1>
netsh interface ipv4 add dns "%Interface_Name%" <DNS 2>