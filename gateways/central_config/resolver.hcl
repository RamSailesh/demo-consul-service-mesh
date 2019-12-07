{
  "connect_timeout": "15s",
  "failover": [
    {
      "*": [
        {
          "datacenters": [
            "dc2",
            "dc3"
          ]
        }
      ]
    }
  ],
  "kind": "service-resolver",
  "name": "payments"
}