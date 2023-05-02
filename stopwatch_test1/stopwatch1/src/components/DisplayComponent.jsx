import React from "react";

function DisplayComponent({ time }) {

  const h = () =>{
    if(time.h === 0){
      return ""
    }else{
      return <span className="bg-white text-white inline-block font-mono text-lg rounded-lg p-4 w-20">{time.h >= 0 ? time.h : "0" + time.h}</span>
    }
  }


  return (
    <div>
      <span>{h()}</span>&nbsp;&nbsp;
      <span className="bg-white text-black inline-block font-mono text-lg rounded-lg p-4 w-20">{time.m >= 0 ? time.m : "0" + time.m}</span>&nbsp;:&nbsp;
      <span className="bg-white text-black inline-block font-mono text-lg rounded-lg p-4 w-20">{time.s >= 0 ? time.s : "0" + time.s}</span>&nbsp;:&nbsp;
      <span className="bg-white text-black inline-block font-mono text-lg rounded-lg p-4 w-20">{time.ms >= 0 ? time.ms : "0" + time.ms}</span>
    </div>
  );
}

export default DisplayComponent;
