import React from "react";

const Light = ({ color, lit, setLit }) => {
  return (
    <div>
      <div
        className="light"
        style={{ backgroundColor: color === lit ? color : "gray" }}
        onClick={() => setLit(color)}
      ></div>
    </div>
  );
};

export default Light;
