myDrop input cutLength = if cutLength <= 0 || null input then input else myDrop (tail input) (cutLength - 1)
