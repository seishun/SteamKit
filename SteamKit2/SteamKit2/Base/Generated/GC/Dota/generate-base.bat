@echo off
pushd ..\..\..\..\..\..\Resources\Protobufs\dota

echo Building Dota messages...
..\..\Protogen\protogen -s:..\ -i:"matchmaker_common.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\Dota\MatchmakerCommon.cs" -t:csharp -ns:"SteamKit2.GC.Dota.Internal"

:: dota messages reference some types from the gc base, so we need to import the reference for it
..\..\Protogen\protogen -s:..\ -i:"dota_gcmessages_common.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\Dota\MsgGCCommon.cs" -t:csharp -ns:"SteamKit2.GC.Dota.Internal" -p:import="SteamKit2.GC.Internal"
..\..\Protogen\protogen -s:..\ -i:"dota_gcmessages_client.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\Dota\MsgGCClient.cs" -t:csharp -ns:"SteamKit2.GC.Dota.Internal" -p:import="SteamKit2.GC.Internal"
..\..\Protogen\protogen -s:..\ -i:"dota_gcmessages_server.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\Dota\MsgGCServer.cs" -t:csharp -ns:"SteamKit2.GC.Dota.Internal" -p:import="SteamKit2.GC.Internal"

popd