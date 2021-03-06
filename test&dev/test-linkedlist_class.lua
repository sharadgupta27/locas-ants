local TLinkedList = require('code.llist')

qList = TLinkedList.create()

----------------
-- testing it
--adding
local n = qList.newNode("1juan")
qList.add( n )
local n2 = qList.newNode("2maria")
qList.add( n2 )
n = qList.newNode("3pedro")
qList.add( n )

-- print listing 
qList.forEachObj( print )

-- remove
qList.remove(n2)
print ('removing: '..n2.obj)
-- print listing 
qList.forEachObj( print )

print ('adding 4jose')
n2.obj = '4jose'
qList.add(n2)
qList.forEachObj( print )

print('count = '..qList.count)
print(':')
print('Iterations')

-- iterating using next
qList.iterReset()
local nodex = qList.iterNext()
while nodex~=qList.tail do
  print('iterating: '..nodex.obj)
  nodex = qList.iterNext()  
end

-- iterating with for
qList.iterReset()
for i=1,qList.count do
  nodex = qList.iterNext()
  print(i..')-'..nodex.obj)

end

