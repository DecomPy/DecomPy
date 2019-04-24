import difflib


def configureHighlightColors(original, new, addColor="green", removeColor="red"):
    original.tag_config("remove", background=removeColor, foreground="black")
    new.tag_config("add", background=addColor, foreground="black")


def getHighlights(original, new):
    s1 = original.get("1.0", "end")
    s2 = new.get("1.0", "end")

    d = difflib.Differ()
    diffs = d.compare(s1.split("\n"), s2.split("\n"))

    remove = []
    add = []
    originalLineNum = 1
    newLineNum = 1

    for line in diffs:
        code = line[:2]
        if code in ("  ", "+ ", "- "):
            if code != "- ":
                if code == "+ ":
                    add.append(newLineNum)
                newLineNum += 1
            if code != "+ ":
                if code == "- ":
                    remove.append(originalLineNum)
                originalLineNum += 1

    return remove, add


def highlightDiffs(original, new):
    original.tag_remove("remove", "1.0", "end")
    new.tag_remove("add", "1.0", "end")
    remove, add = getHighlights(original, new)

    for line in remove:
        original.tag_add("remove", "%d.0" % line, "%d.0" % (line + 1))

    for line in add:
        new.tag_add("add", "%d.0" % line, "%d.0" % (line + 1))
