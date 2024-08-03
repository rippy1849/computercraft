local args = {...}
local paste_id = args[1]
shell.run("delete image.nfp") --delete file if it already exists
shell.run("wget", paste_id, "image.nfp") --fetch NFP image from pastebin at given paste_id
print("Drawing...")
local old_term = term.current()
local mon = peripheral.find("monitor") --find and attach to monitor
mon.setTextScale(0.5)
term.redirect(mon)
term.clear()
--draw image through paintutils
local image = paintutils.loadImage("image.nfp") 
paintutils.drawImage(image, 0, 0)
term.redirect(old_term)
print("Done")