import { useState } from "react";
import "./App.css";
import Light from "./component/Light";


function App() {
  const [lit, setLit] = useState('red')

  const colors = ['red', 'yellow', 'green']
  return (
    <>
      <div className="App">
        {
          colors.map((color,i) => <Light key={i} color={color} lit={lit} setLit={setLit}/>)
        }
      </div>
    </>
  );
}

export default App;
