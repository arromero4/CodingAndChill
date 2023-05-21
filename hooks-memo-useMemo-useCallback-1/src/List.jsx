import React from "react";
import Item from "./Item";
import { memo, useEffect } from "react";

const List = memo(({ users, handleDelete }) => {
  useEffect(() => {
    //console.log("list render");
  }, []);

  return (
    <ul>
      {users.map((user) => (
        <Item key={user.id} user={user} handleDelete={handleDelete} />
      ))}
    </ul>
  );
});

export default List;
