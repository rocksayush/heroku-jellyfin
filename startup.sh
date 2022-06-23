#!/bin/bash

mkdir /config/config

cd /config/config

echo $PORT

echo '<?xml version="1.0" encoding="utf-8"?>
<NetworkConfiguration xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
  <RequireHttps>false</RequireHttps>
  <CertificatePath />
  <CertificatePassword />
  <BaseUrl />
  <PublicHttpsPort>'"$PORT"'</PublicHttpsPort>
  <HttpServerPortNumber>'"$PORT"'</HttpServerPortNumber>
  <HttpsPortNumber>8920</HttpsPortNumber>
  <EnableHttps>false</EnableHttps>
  <PublicPort>8096</PublicPort>
  <UPnPCreateHttpPortMap>false</UPnPCreateHttpPortMap>
  <UDPPortRange />
  <EnableIPV6>false</EnableIPV6>
  <EnableIPV4>true</EnableIPV4>
  <EnableSSDPTracing>false</EnableSSDPTracing>
  <SSDPTracingFilter />
  <UDPSendCount>2</UDPSendCount>
  <UDPSendDelay>100</UDPSendDelay>
  <IgnoreVirtualInterfaces>true</IgnoreVirtualInterfaces>
  <VirtualInterfaceNames>vEthernet*</VirtualInterfaceNames>
  <GatewayMonitorPeriod>60</GatewayMonitorPeriod>
  <TrustAllIP6Interfaces>false</TrustAllIP6Interfaces>
  <HDHomerunPortRange />
  <PublishedServerUriBySubnet />
  <AutoDiscoveryTracing>false</AutoDiscoveryTracing>
  <AutoDiscovery>true</AutoDiscovery>
  <RemoteIPFilter />
  <IsRemoteIPFilterBlacklist>false</IsRemoteIPFilterBlacklist>
  <EnableUPnP>false</EnableUPnP>
  <EnableRemoteAccess>true</EnableRemoteAccess>
  <LocalNetworkSubnets />
  <LocalNetworkAddresses />
  <KnownProxies />
  <EnablePublishedServerUriByRequest>false</EnablePublishedServerUriByRequest>
</NetworkConfiguration>' > network.xml

ls -l

cat network.xml

/jellyfin/jellyfin -d config
