{
  enable = true;
  upstreams.backend.servers = {
    "localhost:3000" = { };
    "localhost:3001" = { };
    "localhost:3002" = { };
    "localhost:3003" = { };
  };
  virtualHosts.localhost = {
    listen = [
      {
        addr = "localhost";
        port = 6942;
      }
    ];
    locations."/" = {
      proxyPass = "http://backend";
      extraConfig = ''
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto $scheme;
      '';
    };
  };
}
