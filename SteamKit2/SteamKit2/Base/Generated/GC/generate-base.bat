@echo off
pushd ..\..\..\..\..\Resources\Protobufs\dota

rem we use dota as the GC message base since it's the most updated

echo Building GC base
..\..\Protogen\protogen -s:..\ -i:"steammessages.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\SteamMsgBase.cs" -t:csharp -ns:"SteamKit2.GC.Internal"
..\..\Protogen\protogen -s:..\ -i:"gcsystemmsgs.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\SteamMsgGCSystem.cs" -t:csharp -ns:"SteamKit2.GC.Internal"
..\..\Protogen\protogen -s:..\ -i:"base_gcmessages.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\SteamMsgGC.cs" -t:csharp -ns:"SteamKit2.GC.Internal"
..\..\Protogen\protogen -s:..\ -i:"gcsdk_gcmessages.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\SteamMsgGCSDK.cs" -t:csharp -ns:"SteamKit2.GC.Internal"
..\..\Protogen\protogen -s:..\ -i:"econ_gcmessages.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\SteamMsgGCEcon.cs" -t:csharp -ns:"SteamKit2.GC.Internal"

popd