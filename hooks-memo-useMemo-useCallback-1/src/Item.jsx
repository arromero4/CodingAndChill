import React, { memo, useEffect } from "react";

const Item = memo(({ user, handleDelete }) => {
  useEffect(() => {
    //console.log("item render");
  }, []);
  return (
    <li>
      {user.name}
      <button onClick={() => handleDelete(user.id)}>Delete</button>
    </li>
  );
});

export default Item;
