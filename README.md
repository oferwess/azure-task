# azure-task
 Step 1
Using Terraform, Create a template file that will launch a new environment in Azure, according to details below:
    •	Create a V-Net  and subnet to host the VM
    •	The VM should have a DYNAMIC public IP - Make sure only your current outgoing IP address is allowed access to the VM via ‘Network security group’ (check your public ip by searching ‘what is my ip’)
    •	Create the following VM and install Docker
    					
| Type | Value |
| --- | --- |
| OS | Linux |
| Application | Docker |
| CPU | 2 cores |
| Memory | 4 GB |
| Type | BS Series |
| SSH | Private Key |

•	You can only create compute and network resources, to avoid errors, please use this env variable:
export ARM_SKIP_PROVIDER_REGISTRATION=true
•	For login, use the command: az login


Step 2
1.	Using Docker, run 1 or more containers that do the following:
a.	Use NGINX for reversed proxy
b.	Serve a web page that greets: 
“Hello <Client IP> and welcome to Silverfort. The weather today in TLV is <Celsius> C”
c.	Serve the webpage using HTTPs (self-signed cert is ok)
