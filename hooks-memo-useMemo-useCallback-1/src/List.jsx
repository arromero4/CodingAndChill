import React from 'react'
import Item from './Item'
import { useEffect } from 'react'

const List = ({ users }) => {
  useEffect(() => {
    console.log('list render')
  },[])

  return (
    <ul>
      {
        users.map(user => (
          <Item  key={user.id} user={user} / >
        ))}
    </ul>
  )
}

export default List