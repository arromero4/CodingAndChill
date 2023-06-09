import React, { useState, useEffect, useMemo, useCallback } from "react";
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
  const [text, setText] = useState("");
  const [search, setSearch] = useState("");

  const handleAdd = () => {
    const newUser = { id: Date.now(), name: text };
    setUsers([...users, newUser]);
  };

  const handleSearch = () => {
    setSearch(text);
  };
  

  const handleDelete = useCallback((id) => {
    setUsers(users.filter((user) => user.id !== id));
  }, [users]);

  const filteredUsers = useMemo(
    () =>
      users.filter((user) => {
        console.log("filter process");
        return user.name.toLowerCase().includes(search.toLowerCase());
      }),
    [search, users]
  );

  const printUsers = useCallback(() => {
    console.log('print users', users);
  }, [users])

  useEffect(() => {
    //console.log("App render");
  });

  useEffect(() => {
    printUsers()
  },[users, printUsers]);


  return (
    <>
      <div>
        <input
          type="text"
          value={text}
          onChange={(event) => setText(event.target.value)}
        />
        <button onClick={handleSearch}>Search</button>
        <button onClick={handleAdd}>Add</button>
        <List users={filteredUsers} handleDelete={handleDelete} />
      </div>
    </>
  );
}

export default App;
