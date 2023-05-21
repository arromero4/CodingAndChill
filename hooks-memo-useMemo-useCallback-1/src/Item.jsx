import React, { memo, useEffect } from 'react'

const Item = memo(({ user }) => {
    
    useEffect(() => {
        //console.log('item render')
      },[])
  return (
    <li>
        {user.name}
    </li>
  )
})


export default Item