import { useState } from "react";
import "./App.css";
import DisplayComponent from "./components/DisplayComponent";
import BtnComponent from "./components/BtnComponent";

function App() {
  const [time, setTime] = useState({ ms: 0, s: 0, m: 0, h: 0 });
  const [interv, setInterv] = useState();
  const [status, setStatus] = useState(0);

  const start = () => {
    run();
    setStatus(1);
    setInterv(setInterval(run, 10));
  };
  var updatedMs = time.ms,
    updatedS = time.s,
    updatedM = time.m,
    updatedH = time.h;

  const run = () => {
    if (updatedM === 60) {
      updatedH++;
      updatedM = 0;
    }
    if (updatedS === 60) {
      updatedM++;
      updatedS = 0;
    }
    if (updatedMs === 100) {
      updatedS++;
      updatedMs = 0;
    }
    updatedMs++;
    return setTime({ ms: updatedMs, s: updatedS, m: updatedM, h: updatedH });
  };

  const stop = () => {
    clearInterval(interv);
    setStatus(2);
  };

  const reset = () => {
    clearInterval(interv);
    setStatus(0);
    setTime({ ms: 0, s: 0, m: 0, h: 0 })
  };

  const resume = () => start()
  return (
    <>
    <div className="container max-w-2xl w-11/12 h-128 my-9 mx-auto flex justify-center bg-opacity-0">
        <div className="w-full bg-[#2D2D34] my-9 mx-auto relative">
          <div className="py-16 px-0 text-center">
            <DisplayComponent time={time} />
            <BtnComponent
              
              status={status}
              start={start}
              stop={stop}
              reset={reset}
              resume={resume}
            />
          </div>
        </div>
      </div>
     
    </>
  );
}

export default App;
