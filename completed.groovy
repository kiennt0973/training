def dirPath = build.getEnvVars()["DIR_PATH"]
dirPath = 'ls ' + dirPath

def sout = new StringBuilder(), serr = new StringBuilder()
def proc = dirPath.execute()
proc.consumeProcessOutput(sout, serr)
proc.waitForOrKill(1000)
println "out> \n$sout\nerr> $serr"
//  looop
for(int i = 0;i<11;i++) {
    println(i);
}

// create and write file
 def dir = new File('./groovy')
    dir.mkdir()

def newFile = new File("./groovy/test1.txt")
    newFile.createNewFile()

new File('./groovy','test1.txt').withWriter('utf-8') { 
    writer -> writer.writeLine 'Hello World' 
}  
