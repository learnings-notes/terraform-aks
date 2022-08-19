Documentation for Dev env,

1. create 2 Vnets
    * Hub vnet (10.1.0.0/16)
        * Subnet - AzureFirewallSubnet (10.1.0.0/24 (251 available))
        * Subnet - GatewaySubnet (10.1.1.0/24 (251 available))
        * Subnet - AzureBastionSubnet (10.1.2.0/24 (251 available))
    * Spoke Vnet (10.2.0.0/16) - Done
        * snet-clusternodes (10.2.4.0/22 (1019 available))
        * snet-clusteringressservices (10.2.2.0/24 (251 available)
        * snet-applicationgateway (10.2.1.0/24 (251 available))
        * snet-privatelinkendpoints (10.2.0.0/24 (251 available))

2. Create Azure Container registry (ACR) - Done
3. Create Azure AD User, Group for managing AKS Clusters using Azure AD Users - Done
4. Create SSH Keys to enable and access Kubernetes Workernodes via SSH Terminal.
5. Create Log Analytics Workspace for enabling Monitoring Add On during AKS Cluster creation.
6. Set Windows Username and Password during AKS Cluster creation to have AKS Cluster support future Windows Nodepools.
7. create aks cluster
    * default node pool with 3 nodes
    * user node pool with 3 nodes (should be recurring for required no.of nodes with for each)
8. create NSG for setting the access restrictions
9. Create Nginx/AGIC/Firewall for accessing the application
10. create Domain and DNS zone for domain registration
11. Deploy Nginx through terraform template.
