--Export function
function export()
	export28()
	--os.execute("sleep " .. tonumber(1))
	export56()
	--os.execute("sleep " .. tonumber(1))
	export112()
	--os.execute("sleep " .. tonumber(1))
	app.alert("Twitch Emote Export Complete!")
end

function export28()
	local image = app.activeImage
	local filename = app.fs.filePathAndTitle(app.activeSprite.filename)
	app.transaction(
	function()
		image:resize{width=28,height=28}
		image:saveAs(filename .. "_28x28.png")
	end)
	app.undo()
end

function export56()
	local image = app.activeImage
	local filename = app.fs.filePathAndTitle(app.activeSprite.filename)
	app.transaction(
	function()
		image:resize{width=56,height=56}
		image:saveAs(filename .. "_56x56.png")
	end)
	app.undo()
end

function export112()
	local image = app.activeImage
	local filename = app.fs.filePathAndTitle(app.activeSprite.filename)
	app.transaction(
	function()
		image:resize{width=112,height=112}
		image:saveAs(filename .. "_112x112.png")
	end)
	app.undo()
end

export()