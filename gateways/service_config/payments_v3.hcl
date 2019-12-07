service {
  name = "payments"
  id = "payments-v3"
  address = "10.7.0.3"
  port = 9093
  
  tags      = ["v3"]
  meta      = {
    version = "3"
  }

   connect { 
    sidecar_service {
      port = 20003
      check {
       name = "Connect Envoy Sidecar"
       tcp = "10.7.0.3:20003"
       interval ="10s"
    }  
  }
  }
}