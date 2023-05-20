import React from 'react'
import { useEffect } from 'react'

const Item = ({ user }) => {
    
    useEffect(() => {
        console.log('item render')
      },[])
  return (
    <li>
        {user.name}
    </li>
  )
}


export default Item