@echo off
pushd ..\..\..\..\..\..\SteamResources\Protobufs\tf

rem the base GC messages are generated from the dota protobufs

echo Building TF2 GC messages
..\..\..\SteamTools\Protogen\protogen -s:..\ -i:"tf_gcmessages.proto" -o:"..\..\..\SteamKit2\SteamKit2\Base\Generated\GC\TF2\MsgGC.cs" -t:csharp -ns:"SteamKit2.GC.TF2.Internal"

popd