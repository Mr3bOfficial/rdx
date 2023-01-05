function import()
    local codes = [[
        local sX, sY = guiGetScreenSize()
        local mX, mY = ]]..screenX..[[, ]]..screenY..[[

        dxImage = function(x, y, w, h, ...)
            return dxDrawImage(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        dxRectangle = function(x, y , w, h, ...)
            return dxDrawRectangle(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        dxText = function(text, x, y, w, h, ...)
            return dxDrawText(text, sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        dxCricle = function(x, y, ...)
            return dxDrawCircle(sX * x / mX, sY * y / mY, ...)
        end
        
        dxImageSection = function(x, y, w, h, a1, a2, a3, a4, ...)
            return dxDrawImageSection(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, a1, a2, sX * a3 / mX, sY * a4 / mY, ...)
        end
        
        dxRoundedRectangle = function(x, y, w, h, ...)
            return dxDrawRoundedRectangle(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        dxIsInPosition = function(x, y, w, h)
            return isMouseInPosition(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY)
        end

        guiWindow = function(x, y, w, h, ...)
            return guiCreateWindow(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiButton = function(x, y, w, h, ...)
            return guiCreateButton(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiMemo = function(x, y, w, h, ...)
            return guiCreateMemo(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiLabel = function(x, y, w, h, ...)
            return guiCreateLabel(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiCheckBox = function(x, y, w, h, ...)
            return guiCreateCheckBox(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiEdit = function(x, y, w, h, ...)
            return guiCreateEdit(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiProgress = function(x, y, w, h, ...)
            return guiCreateProgressBar(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiRadioButton = function(x, y, w, h, ...)
            return guiCreateRadioButton(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiGridList = function(x, y, w, h, ...)
            return guiCreateGridList(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiTabPanel = function(x, y, w, h, ...)
            return guiCreateTabPanel(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiTab = function(x, y, w, h, ...)
            return guiCreateTab(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiImage = function(x, y, w, h, ...)
            return guiCreateStaticImage(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiScrollBar = function(x, y, w, h, ...)
            return guiCreateScrollBar(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiScrollPane = function(x, y, w, h, ...)
            return guiCreateScrollPane(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end

        guiComboBox = function(x, y, w, h, ...)
            return guiCreateComboBox(sX * x / mX, sY * y / mY, sX * w / mX, sY * h / mY, ...)
        end
    ]]

    return codes
end
