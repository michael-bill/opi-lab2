svnadmin create svnRepo
cd svnRepo/
pathf=file:///home/studs/s367101/svnRepo
svn mkdir ${pathf}/trunk ${pathf}/branches ${pathf}/tags -m "feat: create repo" --username="MichaelB"
svn checkout ${pathf}/trunk workspace
cd workspace

# r0
cp -f ~/commits/commit0/* ./
svn add *
svn commit -m "r0" --username="MichaelB"

# r1
cp -f ~/commits/commit1/* ./
svn add *
svn commit -m "r1" --username="MichaelB"

# r2
svn copy ${pathf}/trunk/ ${pathf}/branches/feature-1 -m "feature-1" --username="k1nd_cat"
svn switch ${pathf}/branches/feature-1
cp -f ~/commits/commit2/* ./
svn add *
svn commit -m "r2" --username="k1nd_cat"

# r6
cp -f ~/commits/commit6/* ./
svn add *
svn commit -m "r6" --username="k1nd_cat"

# r9
cp -f ~/commits/commit9/* ./
svn add *
svn commit -m "r9" --username="k1nd_cat"

# r12
cp -f ~/commits/commit12/* ./
svn add *
svn commit -m "r12" --username="k1nd_cat"

# r3
svn switch ${pathf}/trunk
cp -f ~/commits/commit3/* ./
svn add *
svn commit -m "r3" --username="MichaelB"

# r4
cp -f ~/commits/commit4/* ./
svn add *
svn commit -m "r4" --username="MichaelB"

# r5
cp -f ~/commits/commit5/* ./
svn add *
svn commit -m "r5" --username="MichaelB"

# r7
cp -f ~/commits/commit7/* ./
svn add *
svn commit -m "r7" --username="MichaelB"

# r8
svn copy ${pathf}/trunk/ ${pathf}/branches/feature-2 -m "feature-2" --username="MichaelB"
svn switch ${pathf}/branches/feature-2
cp -f ~/commits/commit8/* ./
svn add *
svn commit -m "r8" --username="k1nd_cat"

# r10
cp -f ~/commits/commit10/* ./
svn add *
svn commit -m "r10" --username="MichaelB"

# r11
svn switch ${pathf}/trunk
svn merge ${pathf}/branches/feature-2 ${pathf}/trunk --username="MichaelB"
cp -f ~/commits/commit11/* ./
svn add *
svn commit -m "r11" --username="MichaelB"

#13
svn merge ${pathf}/branches/feature-1 ${pathf}/trunk --username="MichaelB"
cp -f ~/commits/commit13/* ./
svn add *
svn commit -m "r13" --username="MichaelB"

# r14
cp -f ~/commits/commit14/* ./
svn add *
svn commit -m "r14" --username="MichaelB"
