import React from 'react'
import Item from './Item'
import { memo, useEffect } from 'react'

const List = memo(({ users }) => {
  useEffect(() => {
    //console.log('list render')
  },[])

  return (
    <ul>
      {
        users.map(user => (
          <Item  key={user.id} user={user} / >
        ))}
    </ul>
  )
})

export default List