terraform { 
  cloud { 
    
    organization = "ValueMomentumInc" 

    workspaces { 
      name = "azure-workspace" 
    } 
  } 
}