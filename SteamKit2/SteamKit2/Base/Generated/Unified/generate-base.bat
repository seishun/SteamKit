@echo off
pushd ..\..\..\..\..\Resources\Protobufs\steamclient

echo Unified Messages
..\..\Protogen\protogen -s:..\ -i:"steammessages_unified_base.steamclient.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\Unified\SteamMsgUnifiedBase.cs" -t:csharp -ns:"SteamKit2.Unified.Internal"

..\..\Protogen\protogen -s:..\ -i:"steammessages_cloud.steamclient.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\Unified\SteamMsgCloud.cs" -t:csharp -ns:"SteamKit2.Unified.Internal"
..\..\Protogen\protogen -s:..\ -i:"steammessages_credentials.steamclient.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\Unified\SteamMsgCredentials.cs" -t:csharp -ns:"SteamKit2.Unified.Internal"
..\..\Protogen\protogen -s:..\ -i:"steammessages_deviceauth.steamclient.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\Unified\SteamMsgDeviceAuth.cs" -t:csharp -ns:"SteamKit2.Unified.Internal"
..\..\Protogen\protogen -s:..\ -i:"steammessages_gamenotifications.steamclient.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\Unified\SteamMsgGameNotifications.cs" -t:csharp -ns:"SteamKit2.Unified.Internal"
..\..\Protogen\protogen -s:..\ -i:"steammessages_offline.steamclient.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\Unified\SteamMsgOffline.cs" -t:csharp -ns:"SteamKit2.Unified.Internal"
..\..\Protogen\protogen -s:..\ -i:"steammessages_parental.steamclient.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\Unified\SteamMsgParental.cs" -t:csharp -ns:"SteamKit2.Unified.Internal"
..\..\Protogen\protogen -s:..\ -i:"steammessages_partnerapps.steamclient.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\Unified\SteamMsgPartnerApps.cs" -t:csharp -ns:"SteamKit2.Unified.Internal"
..\..\Protogen\protogen -s:..\ -i:"steammessages_player.steamclient.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\Unified\SteamMsgPlayer.cs" -t:csharp -ns:"SteamKit2.Unified.Internal"

popd