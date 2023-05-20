import React, { useState, useEffect } from "react";
import List from "./List";

const initialUsers = [
  {
    id: 1,
    name: "John Doe",
  },
  {
    id: 2,
    name: "Luis Garcia",
  },
  {
    id: 3,
    name: "Maria Cristina",
  },
];



function App() {

  const [users, setUsers] = useState(initialUsers);
  const [text, setText] = useState('Nuevo')
  
  useEffect(() => {
    console.log('App render')
  })

  const handleAdd = () => {
    const newUser = { id: Date.now(), name:text}
    setUsers([...users, newUser])
  }
  
  
  return (
    <>
      <div>
        <input type="text" 
        value={text}
        onChange={(event) => setText(event.target.value)}
        />
        <button onClick={handleAdd}>
          Add
        </button>
        <List users={users}/>

      </div>
    </>
  );
}

export default App;
