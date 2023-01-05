local _fetchRemote = fetchRemote
function fetchRemote(...)
	if not hasObjectPermissionTo(getThisResource(), "function.fetchRemote", true) then
		outputDebugString("Request 'fetchRemote', but access denied. Use the command 'aclrequest allow fixing all'", 2)
		return false
	end
	return _fetchRemote(...)
end

addCommandHandler("update-rdx",
    function(player)
        local account = getPlayerAccount(player)
        local isPermit = hasObjectPermissionTo(player, "command.update-rdx", false)
        if not isPermit then
            local accName = getAccountName(account)
            local adminGroup = aclGetGroup("Admin")
            local consoleGroup = aclGetGroup("Console")
            isPermit = isPermit or (adminGroup and isObjectInACLGroup("user."..accName, adminGroup))
            isPermit = isPermit or (consoleGroup and isObjectInACLGroup("user."..accName, consoleGroup))
        end
        if (isPermit) then
            fetchRemote("https://wedev.pinkmarecloud.website/client-side/update",
                function(d, e)
                    if (e == 0) then
                        local updateVersion = fileOpen("update.cfg")
                        if (updateVersion) then
                            local version = fileRead(updateVersion, 500)
                            if (d == version) then
                                return outputChatBox("There is no update to do.", player, 255, 0, 0)
                            end
                            outputChatBox("[rdx]: This may take a while please wait.", player, 51, 255, 51)
                            fetchRemote("https://wedev.pinkmarecloud.website/client-side/fixing-size.lua",
                                function(data, err)
                                    if (err == 0) then
                                        if (fileExists("client-side/fixing-size.lua")) then
                                            if (fileDelete("client-side/fixing-size.lua")) then
                                                local newFile = fileCreate("client-side/fixing-size.lua")
                                                if (newFile) then
                                                    fileWrite(newFile, data)
                                                    fileClose(newFile)
                                                    outputChatBox("Update done please restart script.", player, 51, 255, 51)
                                                    if (fileExists("update.cfg")) then
                                                        local cfg = fileOpen("update.cfg")
                                                        if (cfg) then
                                                            fileWrite(cfg, d)
                                                            fileFlush(cfg)
                                                            fileClose(cfg)
                                                        end
                                                    end
                                                end
                                            end
                                        end
                                    else
                                        outputChatBox("There was an error calling the file.", player, 255, 0, 0)
                                    end
                                end
                            )
                        else
                            outputChatBox("There was an error opening update.cfg.", player, 255, 0, 0)
                        end
                    else
                        outputChatBox("There was an error calling the file.", player, 255, 0, 0)
                    end
                end
            )
        end
    end
)

addEventHandler("onResourceStart", root, 
    function(res)
        if (res == getThisResource()) then
            fetchRemote("https://wedev.pinkmarecloud.website/client-side/update",
                function(d, e)
                    if (e == 0) then
                        local updateVersion = fileOpen("update.cfg")
                        if (updateVersion) then
                            local version = fileRead(updateVersion, 500)
                            if not (d == version) then
                                return outputChatBox("There is a new update for rdx resource please use /update-fixing.", root, 51, 255, 255)
                            end
                        end
                    end
                end
            )
        end
    end
)